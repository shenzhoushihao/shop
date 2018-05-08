package com.corp.project.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.corp.project.api.service.BaseDataService;
import com.corp.project.api.service.UserApiService;
import com.corp.project.util.ResultPO;

import aos.framework.core.utils.AOSUtils;
import aos.framework.dao.po.AosUserPO;
import aos.system.common.model.UserModel;
import aos.system.dao.po.AosOrgPO;
import aos.system.modules.cache.CacheUserDataService;

@RestController
@RequestMapping(value = "/api/user")
public class UserController {

    @Autowired
    private UserApiService userApiService;
    @Autowired
    private BaseDataService baseDataService;
    @Autowired
    private CacheUserDataService cacheUserDataService;


    /**
     * 更新用户信息
     * 
     * @param id
     * @param name
     * @param college_id
     * @param email
     * @param telephone
     * @return
     */
    @RequestMapping(value = "/update/{juid}", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO updateUser(@PathVariable String juid, @RequestParam(value = "id") Integer id,
            @RequestParam(value = "name") String name,
            @RequestParam(value = "college_id") Integer college_id,
            @RequestParam(value = "email") String email,
            @RequestParam(value = "telephone") String telephone) {

        AosUserPO aosUserPO = new AosUserPO();
        aosUserPO.setId(id);
        aosUserPO.setName(name);
        aosUserPO.setCollege_id(college_id);
        aosUserPO.setEmail(email);
        aosUserPO.setTelephone(telephone);;
        boolean flag = userApiService.updateUser(aosUserPO);
        if (flag) {
            // 刷新缓存
            UserModel userModel = cacheUserDataService.getUserModel(juid);
            if (AOSUtils.isNotEmpty(userModel)) {
                AosOrgPO college = baseDataService.getOnlyCollege(college_id);
                userModel.setOrg_id(college_id);
                userModel.setCname(college.getCname());
                userModel.setName(name);
                cacheUserDataService.cacheUserModel(userModel);
            }
            return ResultPO.success().add("msg", "更新信息成功！");
        }
        return ResultPO.fail().add("msg", "更新信息失败！");
    }

    /**
     * 退出登录
     * 
     * @param juid
     * @return
     */
    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO logout(@RequestParam(value = "juid") String juid) {
        cacheUserDataService.logout(juid);
        return ResultPO.success().add("msg", "退出登录！");
    }
}
