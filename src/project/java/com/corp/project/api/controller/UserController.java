package com.corp.project.api.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
import aos.framework.web.router.HttpModel;
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
     * 查询用户信息
     * 
     * @param juid
     * @return
     */
    @RequestMapping(value = "/getUser", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO getUser(@RequestParam(value = "juid") String juid) {
        UserModel userModel = cacheUserDataService.getUserModel(juid);
        if (AOSUtils.isNotEmpty(userModel)) {
            return ResultPO.success().add("user", userModel);
        } else {
            return ResultPO.fail();
        }
    }

    /**
     * 查看密码是否一致
     * 
     * @param juid
     * @param password
     * @return
     */
    @RequestMapping(value = "/validatepwd", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO validateUserPwd(@RequestParam(value = "juid") String juid,
            @RequestParam(value = "password") String password) {
        UserModel userModel = cacheUserDataService.getUserModel(juid);
        boolean flag = userApiService.validatePwd(userModel.getId(), password);
        if (flag) {
            return ResultPO.success().add("msg", "原密码正确！");
        } else {
            return ResultPO.fail().add("msg", "原密码不正确！");
        }
    }

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
        aosUserPO.setTelephone(telephone);
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

    /**
     * 查询是否被注册
     * 
     * @param account
     * @return
     */
    @RequestMapping(value = "/isRegister", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO isRegister(@RequestParam(value = "account") String account) {
        boolean flag = userApiService.isRegister(account);
        if (flag) {
            return ResultPO.success().add("msg", "学号可以使用！");
        } else {
            return ResultPO.fail().add("msg", "学号已被注册！");
        }
    }

    /**
     * 注册用户
     * 
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/insertUser", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO insertUser(HttpServletRequest request, HttpServletResponse response) {
        HttpModel httpModel = new HttpModel(request, response);
        httpModel.getInDto().println();
        boolean insertUser = userApiService.insertUser(httpModel.getInDto());
        if (insertUser) {
            return ResultPO.success().add("msg", "注册失败！");
        } else {
            return ResultPO.fail().add("msg", "注册成功！");
        }
    }
}
