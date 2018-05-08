package com.corp.project.dao.po;

import aos.framework.core.typewrap.PO;

/**
 * <b>category[category]数据持久化对象</b>
 * <p>
 * 注意:此文件由AOS平台自动生成-禁止手工修改。
 * </p>
 * 
 * @author shaowenwen
 * @date 2018-05-03 16:00:30
 */
public class CategoryPO extends PO {

	private static final long serialVersionUID = 1L;

	/**
	 * id
	 */
	private Integer id;
	
	/**
	 * cname
	 */
	private String cname;
	

	/**
	 * id
	 * 
	 * @return id
	 */
	public Integer getId() {
		return id;
	}
	
	/**
	 * cname
	 * 
	 * @return cname
	 */
	public String getCname() {
		return cname;
	}
	

	/**
	 * id
	 * 
	 * @param id
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	
	/**
	 * cname
	 * 
	 * @param cname
	 */
	public void setCname(String cname) {
		this.cname = cname;
	}
	

}