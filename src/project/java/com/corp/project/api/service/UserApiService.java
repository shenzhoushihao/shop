package com.corp.project.api.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import aos.framework.core.typewrap.Dto;
import aos.framework.core.typewrap.Dtos;
import aos.framework.core.utils.AOSCodec;
import aos.framework.core.utils.AOSUtils;
import aos.framework.dao.AosUserDao;
import aos.framework.dao.po.AosUserPO;

@Service("userApiService")
public class UserApiService {


    @Autowired
    private AosUserDao aosUserDao;

    /**
     * 查询密码是否正确
     * 
     * @param id
     * @param pwd
     * @return
     */
    public boolean validatePwd(Integer id, String pwd) {
        String password = AOSCodec.password(pwd);
        AosUserPO user = aosUserDao.selectByKey(id);
        return password.equalsIgnoreCase(user.getPassword()) ? true : false;
    }

    /**
     * 查询是否注册
     * 
     * @param account
     * @return
     */
    public boolean isRegister(String account) {
        AosUserPO aosUserPO = aosUserDao.selectOne(Dtos.newDto("account", account));
        return AOSUtils.isEmpty(aosUserPO);
    }


    /**
     * 更新用户信息
     * 
     * @param aosUserPO
     * @return
     */
    @Transactional
    public boolean updateUser(AosUserPO aosUserPO) {
        Integer flag = 0;
        flag = aosUserDao.updateByKey(aosUserPO);
        return flag == 0 ? false : true;
    }

    /**
     * 注册用户
     * 
     * @param inDto
     * @return
     */
    @Transactional
    public boolean insertUser(Dto inDto) {
        AosUserPO aosUserPO = new AosUserPO();
        aosUserPO.copyProperties(inDto);
        aosUserPO.setCollege_id(inDto.getInteger("college"));
        aosUserPO.setPassword(AOSCodec.password(inDto.getString("password")));
        aosUserPO.setName(inDto.getString("realname"));
        aosUserPO.setCreatedtime(AOSUtils.getDateTime());
        aosUserPO.setIs_del("0");
        aosUserPO.setStatus("1");
        return aosUserDao.insert(aosUserPO) == 0 ? false : true;
    }
}
