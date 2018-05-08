package aos.system.modules.cache;

import java.util.List;
import java.util.Set;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.google.common.collect.Lists;

import aos.framework.core.asset.WebCxt;
import aos.framework.core.exception.AOSException;
import aos.framework.core.redis.JedisUtil;
import aos.framework.core.typewrap.Dto;
import aos.framework.core.typewrap.Dtos;
import aos.framework.core.utils.AOSCons;
import aos.framework.core.utils.AOSCxt;
import aos.framework.core.utils.AOSJson;
import aos.framework.core.utils.AOSUtils;
import aos.system.common.model.UserModel;
import aos.system.common.utils.SystemCons;
import redis.clients.jedis.Jedis;

/**
 * <b>用户数据缓存服务</b>
 * 
 * @author xiongchun
 */
@Service
public class CacheUserDataService {

	private static Logger log = LoggerFactory.getLogger(CacheUserDataService.class);

	/**
	 * 将用户信息刷到缓存
	 * 
	 * @param userModel
	 */
	public void cacheUserModel(UserModel userModel) {
		if (AOSUtils.isEmpty(userModel.getJuid())) {
			throw new AOSException("JUID不能为空");
		}
		String userJson = AOSJson.toJson(userModel);
		// 由于Redis无法对hash结构里的单条记录设置超时销毁时间，所以用户信息只能缓存在Redis的更目录上。
		JedisUtil.setString(userModel.getJuid(), userJson, Integer.valueOf(AOSCxt.getParam("user_login_timeout")));
	}

	/**
	 * 将用户信息从缓存中重置
	 * 
	 * @param userModel
	 */
	public void resetUserModel(String juid) {
		if (AOSUtils.isNotEmpty(juid)) {
			JedisUtil.delString(juid);
		}
	}

	/**
	 * 将用户授权信息从缓存中重置(卡片和卡片内导航菜单信息)
	 * 
	 * @param userId
	 */
	public void resetGrantInfoOfUser(Integer userId) {
		if (AOSUtils.isNotEmpty(userId)) {
			String cardKey = SystemCons.KEYS.CARDLIST + userId;
			String cardListJson = JedisUtil.getString(cardKey);
			List<Dto> cardList = AOSJson.fromJson(cardListJson);
			if (AOSUtils.isNotEmpty(cardList)) {
				for (Dto dto : cardList) {
					// 卡片内部的导航树
					JedisUtil.delString(SystemCons.KEYS.CARD_TREE + userId + "." + dto.getString("cascade_id"));
				}
			}
			// 卡片
			JedisUtil.delString(cardKey);

		}
	}

	/**
	 * 从缓存中获取用户信息
	 * 
	 * @param juid
	 * @return
	 */
	public UserModel getUserModel(String juid) {
		UserModel userModel = null;
		if (AOSUtils.isNotEmpty(juid)) {
			String userJson = JedisUtil.getString(juid);
			userModel = (UserModel) AOSJson.fromJson(userJson, UserModel.class);
			if (AOSUtils.isEmpty(userModel)) {
				log.debug(AOSUtils.merge("没获取到JUID为[{0}]的UserModel用户对象", juid));
			}
		}
		return userModel;
	}

	/**
	 * 用户登录
	 * 
	 * @param userId
	 * @return
	 */
	public String login(Dto wDto, HttpServletRequest httpServletRequest) {
		// 缓存用户信息
		String juid = UUID.randomUUID().toString();
		UserModel userModel = new UserModel();
		AOSUtils.copyProperties(wDto, userModel);
		userModel.setJuid(juid);
		userModel.setLogin_time(AOSUtils.getDateTimeStr());
		userModel.setClient_ip(WebCxt.getClientIpAddr(httpServletRequest));
		userModel.setClient_key(httpServletRequest.getHeader("USER-AGENT"));
		cacheUserModel(userModel);
		// 维护在线用户列表
		Jedis jedis = JedisUtil.getJedisClient();
		jedis.lpush(SystemCons.KEYS.USER_LIST_KEY, userModel.getJuid());
		JedisUtil.close(jedis);
		return juid;
	}

	/**
	 * 用户注销
	 * 
	 * @param juid
	 */
	public void logout(String juid) {
		// 重置缓存用户信息
		resetUserModel(juid);
		// 维护在线用户列表
		Jedis jedis = JedisUtil.getJedisClient();
		jedis.lrem(SystemCons.KEYS.USER_LIST_KEY, 0, juid);
		JedisUtil.close(jedis);
	}

	/**
	 * 用户心跳维持
	 * 
	 * @param juid
	 */
	public void heartbeat(String juid) {
		JedisUtil.exprString(juid, Integer.valueOf(AOSCxt.getParam("user_login_timeout")));
	}

	/**
	 * 统计在线用户
	 * 
	 * @param inDto
	 * @return
	 */
	public List<Dto> listOnlineUsersPage(Dto inDto) {
		List<Dto> usersList = Lists.newArrayList();
		String juid = inDto.getString("juidQuery");
		if (AOSUtils.isNotEmpty(juid)) {
			UserModel userModel = getUserModel(juid);
			if (AOSUtils.isNotEmpty(userModel)) {
				usersList.add(userModel2OnlineUserDto(userModel));
				inDto.setPageTotal(1);
			}
			return usersList;
		}
		int start = inDto.getPageStart();
		int limit = inDto.getPageLimit();
		Jedis jedis = JedisUtil.getJedisClient();
		List<String> juidList = jedis.lrange(SystemCons.KEYS.USER_LIST_KEY, start, start + limit);
		for (String juidStr : juidList) {
			UserModel userModel = getUserModel(juidStr);
			if (AOSUtils.isEmpty(userModel)) {
				// 删除用户模型
				resetUserModel(juidStr);
				// 删除在线用户列表项
				jedis.lrem(SystemCons.KEYS.USER_LIST_KEY, 0, juidStr);
				continue;
			}
			usersList.add(userModel2OnlineUserDto(userModel));
		}
		Long total = jedis.llen(SystemCons.KEYS.USER_LIST_KEY);
		inDto.setPageTotal(total.intValue());
		JedisUtil.close(jedis);
		return usersList;
	}

	/**
	 * 将用户模型转换为在线用户Dto
	 * 
	 * @param userModel
	 * @return
	 */
	private Dto userModel2OnlineUserDto(UserModel userModel) {
		Dto userDto = Dtos.newDto();
		userDto.put("juid", userModel.getJuid());
		userDto.put("id", userModel.getId());
		userDto.put("account", userModel.getAccount());
		userDto.put("name", userModel.getName());
		userDto.put("client_ip", userModel.getClient_ip());
		userDto.put("login_time", userModel.getLogin_time());
		userDto.put("client_key", userModel.getClient_key());
		return userDto;
	}

	/**
	 * 清除所有用户的功能权限数据(应用重启等时候调用)
	 * 
	 */
	public void clearGrantData() {
		Jedis jedis = JedisUtil.getJedisClient();
		Set<String> keys = jedis.keys(AOSCons.KEYS.FUNCTION_GRANT + "*");
		for (String key : keys) {
			jedis.del(key);
		}
		JedisUtil.close(jedis);
	}

}
