package com.corp.project.httpback.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.corp.project.httpback.dao.BaseDataRepository;

import aos.framework.core.typewrap.Dto;
import aos.framework.core.utils.AOSJson;
import aos.framework.web.router.HttpModel;

@Service("baseDataHttpService")
public class BaseDataHttpService {

	@Autowired
	private BaseDataRepository baseDataRepository;

	/**
	 * 查询学院列表
	 */
	public void getColleges(HttpModel httpModel) {
		Dto inDto = httpModel.getInDto();
		List<Dto> list = baseDataRepository.listCollegeCombox(inDto);
		httpModel.setOutMsg(AOSJson.toJson(list));
	}
}
