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

import com.corp.project.api.service.CommentService;
import com.corp.project.dao.po.CommentsPO;
import com.corp.project.util.ResultPO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import aos.framework.core.typewrap.Dto;
import aos.framework.core.utils.AOSUtils;
import aos.framework.web.router.HttpModel;
import aos.system.common.model.UserModel;
import aos.system.modules.cache.CacheUserDataService;

@RestController
@RequestMapping(value = "/api/comment")
public class CommentController {

    @Autowired
    private CommentService commentService;
    @Autowired
    private CacheUserDataService cacheUserDataService;

    /**
     * 发布留言
     * 
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/pubcomment", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO publishComment(HttpServletRequest request, HttpServletResponse response) {
        HttpModel httpModel = new HttpModel(request, response);
        String juid = httpModel.getInDto().getString("juid");
        UserModel userModel = cacheUserDataService.getUserModel(juid);

        CommentsPO commentsPO = new CommentsPO();
        commentsPO.copyProperties(httpModel.getInDto());
        commentsPO.setCreatedtime(AOSUtils.getDateTime());
        commentsPO.setUid(userModel.getId());

        boolean flag = true;
        flag = commentService.insert(commentsPO);
        if (flag) {
            return ResultPO.success().add("msg", "留言成功！");
        } else {
            return ResultPO.fail().add("msg", "留言失败！");
        }
    }

    /**
     * 查询需求留言
     * 
     * @param pid
     * @return
     */
    @RequestMapping(value = "/comments", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO getAllComments(@RequestParam(value = "sid") Integer sid) {
        PageHelper.startPage(1, 8, "createdtime DESC");
        List<Dto> list = commentService.getAllCommentsByCid(sid);
        PageInfo<Dto> pageInfo = new PageInfo<Dto>(list);
        return ResultPO.success().add("pageInfo", pageInfo);
    }
}
