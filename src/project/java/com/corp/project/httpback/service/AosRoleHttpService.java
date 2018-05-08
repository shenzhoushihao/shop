package com.corp.project.httpback.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import aos.framework.core.typewrap.Dto;
import aos.framework.core.utils.AOSJson;
import aos.framework.web.router.HttpModel;
import aos.system.dao.AosRoleDao;
import aos.system.dao.po.AosRolePO;

@Service("aosRoleHttpService")
public class AosRoleHttpService {

	@Autowired
	private AosRoleDao aosRoleDao;

	/**
	 *  初始化(跳转页面)
	 * 
	 * @param httpModel
	 * @return
	 */
	public void init(HttpModel httpModel) {
		httpModel.setAttribute("juid", httpModel.getInDto().getString("juid"));
		httpModel.setViewPath("system/role.jsp");
	}

	/**
	 * 查询角色列表
	 * 
	 * @param httpModel
	 */
	public void listPage(HttpModel httpModel) {
		Dto inDto = httpModel.getInDto();
		List<AosRolePO> list = aosRoleDao.listPage(inDto);
		httpModel.setOutMsg(AOSJson.toGridJson(list, inDto.getPageTotal()));
	}

	/**
	 * 新增角色信息
	 * 
	 * @param httpModel
	 */
	@Transactional
	public void saveRole(HttpModel httpModel) {
		Dto inDto = httpModel.getInDto();
		AosRolePO aosRolePO = new AosRolePO();
		aosRolePO.copyProperties(inDto);
		aosRoleDao.insert(aosRolePO);
		httpModel.setOutMsg("角色新增成功！");
	}

	/**
	 * 修改角色信息
	 * 
	 * @param httpModel
	 */
	@Transactional
	public void updateRole(HttpModel httpModel) {
		Dto inDto = httpModel.getInDto();
		AosRolePO aosRolePO = new AosRolePO();
		aosRolePO.copyProperties(inDto);
		aosRoleDao.updateByKey(aosRolePO);
		httpModel.setOutMsg("角色修改成功！");
	}

	/**
	 * 批量删除信息
	 * 
	 * @param httpModel
	 */
	@Transactional
	public void delRole(HttpModel httpModel) {
		String[] selectionIds = httpModel.getInDto().getRows();
		for (String id : selectionIds) {
			aosRoleDao.deleteByKey(Integer.valueOf(id));
		}
		httpModel.setOutMsg("批量删除角色数据成功。");
	}
}
