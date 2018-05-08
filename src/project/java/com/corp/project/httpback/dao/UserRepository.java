package com.corp.project.httpback.dao;

import java.util.List;

import aos.framework.core.annotation.Dao;
import aos.framework.core.typewrap.Dto;

@Dao("userRepository")
public interface UserRepository {

	/**
	 * 查询用户列表
	 */
	List<Dto> listPage(Dto pDto);

	/**
	 * 查询学院列表
	 * 
	 * @param inDto
	 */
	List<Dto> listCollegeCombox(Dto inDto);
}
