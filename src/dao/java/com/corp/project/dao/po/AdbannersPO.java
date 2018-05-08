package com.corp.project.dao.po;

import aos.framework.core.typewrap.PO;

/**
 * <b>adbanners[adbanners]数据持久化对象</b>
 * <p>
 * 注意:此文件由AOS平台自动生成-禁止手工修改。
 * </p>
 * 
 * @author shaowenwen
 * @date 2018-04-29 00:19:46
 */
public class AdbannersPO extends PO {

	private static final long serialVersionUID = 1L;

	/**
	 * 流水号
	 */
	private Integer id;
	
	/**
	 * cargo_id
	 */
	private Integer cargo_id;
	
	/**
	 * imgsrc
	 */
	private String imgsrc;
	
	/**
	 * description
	 */
	private String description;
	

	/**
	 * 流水号
	 * 
	 * @return id
	 */
	public Integer getId() {
		return id;
	}
	
	/**
	 * cargo_id
	 * 
	 * @return cargo_id
	 */
	public Integer getCargo_id() {
		return cargo_id;
	}
	
	/**
	 * imgsrc
	 * 
	 * @return imgsrc
	 */
	public String getImgsrc() {
		return imgsrc;
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
	 * 流水号
	 * 
	 * @param id
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	
	/**
	 * cargo_id
	 * 
	 * @param cargo_id
	 */
	public void setCargo_id(Integer cargo_id) {
		this.cargo_id = cargo_id;
	}
	
	/**
	 * imgsrc
	 * 
	 * @param imgsrc
	 */
	public void setImgsrc(String imgsrc) {
		this.imgsrc = imgsrc;
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