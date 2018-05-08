package com.corp.project.api.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import aos.framework.dao.AosUserDao;
import aos.framework.dao.po.AosUserPO;

@Service("userApiService")
public class UserApiService {


    @Autowired
    private AosUserDao aosUserDao;

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
        if (flag == 0) {
            return false;
        } else {
            return true;
        }
    }
}
