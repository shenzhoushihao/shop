package com.corp.project.httpback.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import aos.framework.core.typewrap.Dto;
import aos.framework.core.utils.AOSJson;
import aos.framework.web.router.HttpModel;
import aos.system.dao.AosOrgDao;
import aos.system.dao.po.AosOrgPO;

@Service("aosOrgHttpService")
public class AosOrgHttpService {

	@Autowired
	private AosOrgDao aosOrgDao;

	/**
	 *  初始化(跳转页面)
	 * 
	 * @param httpModel
	 * @return
	 */
	public void init(HttpModel httpModel) {
		httpModel.setAttribute("juid", httpModel.getInDto().getString("juid"));
		httpModel.setViewPath("system/org.jsp");
	}

	/**
	 * 查询学院列表
	 * 
	 * @param httpModel
	 */
	public void listPage(HttpModel httpModel) {
		Dto inDto = httpModel.getInDto();
		List<AosOrgPO> list = aosOrgDao.listPage(inDto);
		httpModel.setOutMsg(AOSJson.toGridJson(list, inDto.getPageTotal()));
	}

	/**
	 * 新增学院信息
	 * 
	 * @param httpModel
	 */
	@Transactional
	public void saveOrg(HttpModel httpModel) {
		Dto inDto = httpModel.getInDto();
		AosOrgPO aosOrgPO = new AosOrgPO();
		aosOrgPO.copyProperties(inDto);
		aosOrgDao.insert(aosOrgPO);
		httpModel.setOutMsg("学院信息新增成功!");
	}

	/**
	 * 修改学院信息
	 * 
	 * @param httpModel
	 */
	@Transactional
	public void updateOrg(HttpModel httpModel) {
		Dto inDto = httpModel.getInDto();
		AosOrgPO aosOrgPO = new AosOrgPO();
		aosOrgPO.copyProperties(inDto);
		aosOrgDao.updateByKey(aosOrgPO);
		httpModel.setOutMsg("学院信息修改成功!");
	}

	/**
	 * 批量删除信息
	 * 
	 * @param httpModel
	 */
	@Transactional
	public void delOrg(HttpModel httpModel) {
		String[] selectionIds = httpModel.getInDto().getRows();
		for (String id : selectionIds) {
			aosOrgDao.deleteByKey(Integer.valueOf(id));
		}
		httpModel.setOutMsg("批量删除学院数据成功。");
	}
}
