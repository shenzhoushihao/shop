package com.corp.project.api.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.corp.project.api.service.EvaluateApiService;
import com.corp.project.dao.po.EvaluatePO;
import com.corp.project.util.ResultPO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import aos.framework.core.typewrap.Dto;
import aos.framework.core.utils.AOSUtils;
import aos.framework.web.router.HttpModel;
import aos.system.common.model.UserModel;
import aos.system.modules.cache.CacheUserDataService;

@RestController
@RequestMapping(value = "/api/evaluate")
public class EvaluateController {

    @Autowired
    private EvaluateApiService evaluateApiService;
    @Autowired
    private CacheUserDataService cacheUserDataService;

    /**
     * 发布评价
     * 
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/pubevaluate", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO publishEvaluate(HttpServletRequest request, HttpServletResponse response) {
        HttpModel httpModel = new HttpModel(request, response);
        String juid = httpModel.getInDto().getString("juid");
        UserModel userModel = cacheUserDataService.getUserModel(juid);

        EvaluatePO evaluatePO = new EvaluatePO();
        evaluatePO.copyProperties(httpModel.getInDto());
        evaluatePO.setCreatedtime(AOSUtils.getDate());
        evaluatePO.setUid(userModel.getId());

        boolean flag = true;
        flag = evaluateApiService.insert(evaluatePO);
        if (flag) {
            return ResultPO.success().add("msg", "评价成功！");
        } else {
            return ResultPO.fail().add("msg", "评价失败！");
        }
    }

    /**
     * 查询产品评价
     * 
     * @param pid
     * @return
     */
    @RequestMapping(value = "/evaluates", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO getAllEvaluates(@RequestParam(value = "pid") Integer pid) {
        PageHelper.startPage(1, 10, "createdtime DESC");
        List<Dto> list = evaluateApiService.getAllEvaluateByPid(pid);
        PageInfo<Dto> pageInfo = new PageInfo<Dto>(list);
        return ResultPO.success().add("pageInfo", pageInfo);
    }
}
