package com.corp.project.api.service;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import aos.framework.core.typewrap.Dto;
import aos.framework.core.typewrap.Dtos;
import aos.framework.core.utils.AOSCodec;
import aos.framework.core.utils.AOSUtils;
import aos.framework.dao.AosUserDao;
import aos.framework.dao.po.AosUserPO;
import aos.framework.web.router.HttpModel;
import aos.system.common.utils.SystemCons;
import aos.system.dao.AosOrgDao;
import aos.system.dao.AosUserRoleDao;
import aos.system.dao.po.AosOrgPO;
import aos.system.dao.po.AosUserRolePO;

@Service("homeApiService")
public class HomeApiService {

    @Autowired
    private AosUserDao aosUserDao;
    @Autowired
    private AosOrgDao aosOrgDao;
    @Autowired
    private AosUserRoleDao aosUserRoleDao;

    /**
     * 用户登录API接口
     * 
     * @param httpModel
     * @return
     */
    public Dto login(HttpModel httpModel) {
        Dto inDto = httpModel.getInDto();
        Dto outDto = Dtos.newDto();

        // 帐号存在校验
        Dto qDto = Dtos.newDto("account", inDto.getString("account"));
        qDto.put("is_del", SystemCons.IS.NO);
        AosUserPO aosUserPO = aosUserDao.selectOne(qDto);

        String msg = "";
        boolean is_pass = true;
        if (AOSUtils.isEmpty(aosUserPO)) {
            msg = "帐号输入错误，请重新输入。";
            is_pass = false;
        } else {
            // 密码校验
            String password = AOSCodec.password(inDto.getString("password"));
            if (!StringUtils.equals(password, aosUserPO.getPassword())) {
                msg = "密码输入错误，请重新输入。";
                is_pass = false;
            } else {
                // 状态校验
                if (!aosUserPO.getStatus().equals(SystemCons.USER_STATUS.NORMAL)) {
                    msg = "该帐号已锁定或已停用，请联系管理员。";
                    is_pass = false;
                }
            }
        }

        Dto pDto = aosUserPO.toDto();
        // 查询学院
        Dto wDto = Dtos.newCalcDto("cname");
        wDto.put("id", aosUserPO.getCollege_id());
        String college = aosOrgDao.calc(wDto);
        pDto.put("cname", college);
        outDto.put("dto", pDto);
        outDto.put("is_pass", is_pass);
        outDto.put("msg", msg);
        return outDto;
    }

    /**
     * 查询个人信息
     * 
     * @param id
     * @return
     */
    public Dto getUserInfo(Integer id) {
        // 查询个人基本信息
        AosUserPO userInfo = aosUserDao.selectByKey(id);
        Dto pDto = userInfo.toDto();

        // 查询学院信息
        AosOrgPO college = aosOrgDao.selectByKey(userInfo.getCollege_id());
        pDto.put("college", college.getCname());

        // 查询角色信息
        List<AosUserRolePO> list = aosUserRoleDao.list(Dtos.newDto("user_id", id));
        for (int i = 0; i < list.size(); i++) {
            pDto.put(String.valueOf(i), list.get(i).getRole_id());
        }
        return pDto;
    }

    /**
     * 更新个人信息
     * 
     * @param httpModel
     * @return
     */
    @Transactional
    public boolean updateMyInfo(HttpModel httpModel) {
        Dto inDto = httpModel.getInDto();
        AosUserPO aosUserPO = new AosUserPO();
        aosUserPO.copyProperties(inDto);
        aosUserPO.setCreatedtime(AOSUtils.getDate());
        Integer flag = 0;
        flag = aosUserDao.updateByKey(aosUserPO);
        return flag == 0 ? false : true;
    }

    /**
     * 修改密码
     * 
     * @param httpModel
     * @return
     */
    @Transactional
    public boolean resetPassword(HttpModel httpModel) {
        Dto inDto = httpModel.getInDto();
        String password = AOSCodec.password(inDto.getString("password"));
        AosUserPO aosUserPO = new AosUserPO();
        aosUserPO.setId(inDto.getInteger("id"));
        aosUserPO.setPassword(password);
        Integer flag = 0;
        flag = aosUserDao.updateByKey(aosUserPO);
        return flag == 0 ? false : true;
    }

    /**
     * 验证密码
     */
    public boolean verifyPassword(HttpModel httpModel) {
        Dto inDto = httpModel.getInDto();
        AosUserPO aosUserPO = aosUserDao.selectByKey(inDto.getInteger("id"));
        String password = AOSCodec.password(inDto.getString("password"));
        return aosUserPO.getPassword().equalsIgnoreCase(password) ? false : true;
    }

    /**
     * 销毁用户
     * 
     * @param httpModel
     * @return
     */
    @Transactional
    public boolean deleteUser(HttpModel httpModel) {
        Dto inDto = httpModel.getInDto();
        AosUserPO aosUserPO = new AosUserPO();
        aosUserPO.setId(inDto.getInteger("id"));
        aosUserPO.setIs_del("1");
        Integer flag = 0;
        flag = aosUserDao.updateByKey(aosUserPO);
        return flag == 0 ? false : true;
    }

    /**
     * 生成问候信息
     * 
     * @return
     */
    public String getWelcomeMsg() {
        String welcome = "晚上好";
        Integer timeInteger = new Integer(AOSUtils.getDateTimeStr("HH"));
        if (timeInteger.intValue() >= 7 && timeInteger.intValue() <= 12) {
            welcome = "上午好";
        } else if (timeInteger.intValue() > 12 && timeInteger.intValue() < 19) {
            welcome = "下午好";
        }
        return welcome;
    }
}
