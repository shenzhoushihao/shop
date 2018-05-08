package com.corp.project.api.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.corp.project.api.service.HomeApiService;
import com.corp.project.util.ResultPO;

import aos.framework.core.typewrap.Dto;
import aos.framework.core.utils.AOSUtils;
import aos.framework.web.router.HttpModel;
import aos.system.common.model.UserModel;
import aos.system.modules.cache.CacheUserDataService;

@RestController
@RequestMapping(value = "/api/home")
public class HomeController {

    @Autowired
    private HomeApiService homeApiService;
    @Autowired
    private CacheUserDataService cacheUserDataService;

    /**
     * 用户登录API
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO login(HttpServletRequest request, HttpServletResponse response) {
        HttpModel httpModel = new HttpModel(request, response);
        httpModel.getInDto().println();
        Dto inDto = homeApiService.login(httpModel);
        String welcomeMsg = homeApiService.getWelcomeMsg();

        // 是否通过检查
        String msg = inDto.getString("msg");
        if (inDto.getBoolean("is_pass")) {
            msg = "登录成功！";
            Dto wDto = (Dto) inDto.get("dto");
            String juid = cacheUserDataService.login(wDto, httpModel.getRequest());
            return ResultPO.success().add("msg", msg).add("juid", juid).add("welcome", welcomeMsg)
                    .add("dto", wDto);
        }
        return ResultPO.fail().add("msg", msg);
    }

    /**
     * 验证是否登录
     */
    @RequestMapping(value = "/islogin", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO isLogin(HttpServletRequest request, HttpServletResponse response) {
        HttpModel httpModel = new HttpModel(request, response);
        UserModel userModel =
                cacheUserDataService.getUserModel(httpModel.getInDto().getString("juid"));
        String welcomeMsg = homeApiService.getWelcomeMsg();
        if (AOSUtils.isNotEmpty(userModel)) {
            return ResultPO.success().add("dto", userModel).add("welcome", welcomeMsg);
        } else {
            return ResultPO.fail();
        }
    }

    /**
     * 更新个人信息
     */
    @RequestMapping(value = "/updateMyInfo", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO updateMyInfo(HttpServletRequest request, HttpServletResponse response) {
        HttpModel httpModel = new HttpModel(request, response);
        boolean flag = true;
        flag = homeApiService.updateMyInfo(httpModel);
        if (flag) {
            return ResultPO.success();
        } else {
            return ResultPO.fail();
        }
    }

    /**
     * 查询个人信息
     */
    @RequestMapping(value = "/getUserInfo", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO getUserInfo(HttpServletRequest request, HttpServletResponse response) {
        HttpModel httpModel = new HttpModel(request, response);
        UserModel userModel =
                cacheUserDataService.getUserModel(httpModel.getInDto().getString("juid"));
        if (AOSUtils.isNotEmpty(userModel)) {
            Dto pDto = homeApiService.getUserInfo(userModel.getId());
            return ResultPO.success().add("userInfo", pDto);
        } else {
            return ResultPO.fail();
        }
    }

    /**
     * 修改密码
     */
    @RequestMapping(value = "/resetPassword", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO resetPassword(HttpServletRequest request, HttpServletResponse response) {
        HttpModel httpModel = new HttpModel(request, response);
        httpModel.getInDto().println();
        boolean flag = homeApiService.resetPassword(httpModel);
        if (flag) {
            return ResultPO.success();
        }
        return ResultPO.fail();
    }

    /**
     * 验证密码
     */
    @RequestMapping(value = "/verifyPassword", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO verifyPassword(HttpServletRequest request, HttpServletResponse response) {
        HttpModel httpModel = new HttpModel(request, response);
        httpModel.getInDto().println();
        boolean flag = homeApiService.verifyPassword(httpModel);
        if (flag) {
            return ResultPO.success();
        }
        return ResultPO.fail();
    }

    /**
     * 销毁用户
     */
    @RequestMapping(value = "/deleteUser", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO deleteUser(HttpServletRequest request, HttpServletResponse response) {
        HttpModel httpModel = new HttpModel(request, response);
        httpModel.getInDto().println();
        boolean flag = homeApiService.deleteUser(httpModel);
        if (flag) {
            cacheUserDataService.logout(httpModel.getInDto().getString("juid"));
            return ResultPO.success();
        }
        return ResultPO.fail();
    }
}
