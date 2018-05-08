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

import com.corp.project.api.service.SeekBuyApiService;
import com.corp.project.dao.po.SeekbuyPO;
import com.corp.project.util.ResultPO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import aos.framework.core.typewrap.Dto;
import aos.framework.core.typewrap.Dtos;
import aos.framework.core.utils.AOSUtils;
import aos.framework.web.router.HttpModel;
import aos.system.common.model.UserModel;
import aos.system.modules.cache.CacheUserDataService;

@RestController
@RequestMapping(value = "/api/seekbuy")
public class SeekBuyController {

    @Autowired
    private CacheUserDataService cacheUserDataService;
    @Autowired
    private SeekBuyApiService seekBuyApiService;

    /**
     * 发布需求
     * 
     * @param juid
     * @param seekbuyPO
     * @return
     */
    @RequestMapping(value = "/saveSeekBuy", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO saveSeekBuy(HttpServletRequest request, HttpServletResponse response) {
        HttpModel httpModel = new HttpModel(request, response);
        String juid = httpModel.getInDto().getString("juid");
        UserModel userModel = cacheUserDataService.getUserModel(juid);

        SeekbuyPO seekbuyPO = new SeekbuyPO();
        seekbuyPO.copyProperties(httpModel.getInDto());
        seekbuyPO.setUid(userModel.getId());

        boolean flag = true;
        flag = seekBuyApiService.insert(seekbuyPO);
        if (flag) {
            return ResultPO.success().add("msg", "发布需求成功！");
        } else {
            return ResultPO.fail().add("msg", "发布需求失败！");
        }
    }

    /**
     * 查询自己的需求
     * 
     * @param juid
     * @param seekbuyPO
     * @return
     */
    @RequestMapping(value = "/listSeekBuy", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO listSeekBuy(
            @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
            @RequestParam(value = "juid") String juid) {
        UserModel userModel = cacheUserDataService.getUserModel(juid);
        Integer pageSize = 10;
        PageHelper.startPage(pageNum, pageSize, "createdtime DESC");
        List<SeekbuyPO> list = seekBuyApiService.findSeekByUid(userModel.getId());
        PageInfo<SeekbuyPO> pageInfo = new PageInfo<>(list);
        return ResultPO.success().add("pageInfo", pageInfo);
    }

    /**
     * 查询所有需求
     * 
     * @param bid
     * @return
     */
    @RequestMapping(value = "/selectAllSeek", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO selectAllSeek(
            @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
            @RequestParam(value = "bid", required = false) Integer bid) {
        Dto qDto = Dtos.newDto();
        if (AOSUtils.isNotEmpty(bid)) {
            qDto.put("bid", bid);
        }
        Integer pageSize = 12;
        PageHelper.startPage(pageNum, pageSize, "createdtime DESC");
        List<Dto> list = seekBuyApiService.selectAllSeek(qDto);
        PageInfo<Dto> pageInfo = new PageInfo<>(list);
        return ResultPO.success().add("pageInfo", pageInfo);
    }

    /**
     * 删除需求
     * 
     * @param bid
     * @return
     */
    @RequestMapping(value = "/deleteSeek", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO deleteSeek(@RequestParam(value = "bid") Integer bid) {
        boolean flag = true;
        flag = seekBuyApiService.deleteSeek(bid);
        if (flag) {
            return ResultPO.success().add("msg", "删除需求成功！");
        } else {
            return ResultPO.fail().add("msg", "删除需求失败！");
        }
    }

    /**
     * 更新需求
     * 
     * @param bid
     * @param title
     * @param description
     * @return
     */
    @RequestMapping(value = "/updateSeek", method = RequestMethod.POST)
    @ResponseBody
    public ResultPO updateSeek(@RequestParam(value = "bid") Integer bid,
            @RequestParam(value = "title") String title,
            @RequestParam(value = "description") String description) {
        Dto qDto = Dtos.newDto();
        if (AOSUtils.isNotEmpty(bid)) {
            qDto.put("bid", bid);
        }
        if (AOSUtils.isNotEmpty(title)) {
            qDto.put("title", bid);
        }
        if (AOSUtils.isNotEmpty(description)) {
            qDto.put("description", description);
        }


        boolean flag = true;
        flag = seekBuyApiService.updateSeek(qDto);

        if (flag) {
            return ResultPO.success().add("msg", "更新需求成功！");
        } else {
            return ResultPO.fail().add("msg", "更新需求失败！");
        }
    }
}
