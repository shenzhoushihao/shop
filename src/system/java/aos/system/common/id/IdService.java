package aos.system.common.id;

import org.springframework.stereotype.Service;
import aos.framework.core.exception.AOSException;
import aos.framework.core.redis.JedisUtil;
import aos.framework.core.utils.AOSCons;
import aos.framework.core.utils.AOSUtils;
import redis.clients.jedis.Jedis;

/**
 * <b>ID生成服务</b>
 * 
 * @author xiongchun
 */
@Service
public class IdService {

	/**
	 * 基于Redis和时间戳的分布式ID（保证集群多节点部署环境下的带语义规则ID的唯一性）
	 * 
	 * <p>
	 * 获取规则序列号：基于Redis生成
	 * </p>
	 * 生成规则：[前缀] + 时间戳 + 递增重复循环的序列
	 * 
	 * @param idType
	 * @return
	 */
	public String id(String idType) {
		return id(idType, null, null);
	}

	/**
	 * 基于Redis和时间戳的分布式ID（保证集群多节点部署环境下的带语义规则ID的唯一性）
	 * 
	 * <p>
	 * 获取规则序列号：基于Redis生成
	 * </p>
	 * 生成规则：[前缀] + 时间戳 + 递增重复循环的序列
	 * 
	 * @param idType
	 *            ID类型 用于作为Redis Key的一部分。标识ID的唯一性。
	 * @param timeFormat
	 *            时间戳的格式 缺省值：yyMMddHHmmss
	 * @param maxIncr
	 *            循环递增序列最大值 9999
	 * @return
	 */
	public String id(String idType, String timeFormat, String maxIncr) {
		if (AOSUtils.isEmpty(idType)) {
			throw new AOSException("idType不能为空，请分配ID类型标识。");
		}
		Jedis jedis = JedisUtil.getJedisClient();
		String id = null;
		String IDSET = "IDSET";
		String key = AOSCons.KEYS.ID + idType;
		timeFormat = AOSUtils.isEmpty(timeFormat) ? "yyMMddHHmmss" : timeFormat;
		maxIncr = AOSUtils.isEmpty(maxIncr) ? "9999" : maxIncr;
		while (true) {
			long myIncrLong = jedis.incr(key);
			if (myIncrLong > Integer.valueOf(maxIncr)) {
				jedis.del(key);
				myIncrLong = jedis.incr(key);
			}
			String myIncrStr = String.format("%" + maxIncr.length() + "d", myIncrLong).replace(" ", "0");
			String myPrefix = AOSUtils.getDateStr(timeFormat);
			id = myPrefix + myIncrStr;
			if (!jedis.sismember(IDSET, id)) {
				jedis.sadd(IDSET, id);
				break;
			}
		}
		JedisUtil.close(jedis);
		return id;
	}
}
