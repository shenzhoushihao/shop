package com.corp.project.dao.po;

import aos.framework.core.typewrap.PO;

/**
 * <b>pricetype[pricetype]数据持久化对象</b>
 * <p>
 * 注意:此文件由AOS平台自动生成-禁止手工修改。
 * </p>
 * 
 * @author shaowenwen
 * @date 2018-05-03 16:16:30
 */
public class PricetypePO extends PO {

	private static final long serialVersionUID = 1L;

	/**
	 * id
	 */
	private Integer id;
	
	/**
	 * pricename
	 */
	private String pricename;
	
	/**
	 * description
	 */
	private String description;
	

	/**
	 * id
	 * 
	 * @return id
	 */
	public Integer getId() {
		return id;
	}
	
	/**
	 * pricename
	 * 
	 * @return pricename
	 */
	public String getPricename() {
		return pricename;
	}
	
	/**
	 * description
	 * 
	 * @return description
	 */
	public String getDescription() {
		return description;
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
	 * pricename
	 * 
	 * @param pricename
	 */
	public void setPricename(String pricename) {
		this.pricename = pricename;
	}
	
	/**
	 * description
	 * 
	 * @param description
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	

}