package com.corp.project.api.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.corp.project.api.service.BaseDataService;
import com.corp.project.dao.po.AdbannersPO;
import com.corp.project.dao.po.CategoryPO;
import com.corp.project.dao.po.PricetypePO;
import com.corp.project.util.ResultPO;

import aos.framework.web.router.HttpModel;
import aos.system.dao.po.AosOrgPO;

@RestController
@RequestMapping(value = "/api/base")
public class BaseDataController {

	@Autowired
	private BaseDataService baseDataService;

	/**
	 * 获取种类列表
	 */
	@RequestMapping(value = "/getCategory", method = RequestMethod.POST)
	@ResponseBody
	public ResultPO getCategory(HttpServletRequest request, HttpServletResponse response) {
		HttpModel httpModel = new HttpModel(request, response);
		httpModel.getInDto().println();
		List<CategoryPO> category = baseDataService.getCategory(httpModel);
		return ResultPO.success().add("category", category);
	}

	/**
	 * 获取价格列表
	 */
	@RequestMapping(value = "/getPriceType", method = RequestMethod.POST)
	@ResponseBody
	public ResultPO getPriceType(HttpServletRequest request, HttpServletResponse response) {
		HttpModel httpModel = new HttpModel(request, response);
		httpModel.getInDto().println();
		List<PricetypePO> priceType = baseDataService.getPriceType(httpModel);
		return ResultPO.success().add("priceType", priceType);
	}

	/**
	 * 获取学院列表
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/getColleges", method = RequestMethod.POST)
	@ResponseBody
	public ResultPO getColleges(HttpServletRequest request, HttpServletResponse response) {
		HttpModel httpModel = new HttpModel(request, response);
		httpModel.getInDto().println();
		List<AosOrgPO> college = baseDataService.getColleges(httpModel);
		return ResultPO.success().add("college", college);
	}

	/**
	 * 获取广告条幅
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/getBanners", method = RequestMethod.POST)
	@ResponseBody
	public ResultPO getBanners(HttpServletRequest request, HttpServletResponse response) {
		HttpModel httpModel = new HttpModel(request, response);
		httpModel.getInDto().println();
		List<AdbannersPO> banners = baseDataService.getBanners(httpModel);
		return ResultPO.success().add("banners", banners);
	}
}
