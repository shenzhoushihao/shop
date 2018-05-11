package com.corp.project.dao.po;

import aos.framework.core.typewrap.PO;
import java.util.Date;

/**
 * <b>seekbuy[seekbuy]数据持久化对象</b>
 * <p>
 * 注意:此文件由AOS平台自动生成-禁止手工修改。
 * </p>
 * 
 * @author shaowenwen
 * @date 2018-05-10 18:22:58
 */
public class SeekbuyPO extends PO {

	private static final long serialVersionUID = 1L;

	/**
	 * bid
	 */
	private Integer bid;
	
	/**
	 * title
	 */
	private String title;
	
	/**
	 * description
	 */
	private String description;
	
	/**
	 * uid
	 */
	private Integer uid;
	
	/**
	 * status
	 */
	private String status;
	
	/**
	 * createdtime
	 */
	private Date createdtime;
	

	/**
	 * bid
	 * 
	 * @return bid
	 */
	public Integer getBid() {
		return bid;
	}
	
	/**
	 * title
	 * 
	 * @return title
	 */
	public String getTitle() {
		return title;
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
	 * uid
	 * 
	 * @return uid
	 */
	public Integer getUid() {
		return uid;
	}
	
	/**
	 * status
	 * 
	 * @return status
	 */
	public String getStatus() {
		return status;
	}
	
	/**
	 * createdtime
	 * 
	 * @return createdtime
	 */
	public Date getCreatedtime() {
		return createdtime;
	}
	

	/**
	 * bid
	 * 
	 * @param bid
	 */
	public void setBid(Integer bid) {
		this.bid = bid;
	}
	
	/**
	 * title
	 * 
	 * @param title
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	
	/**
	 * description
	 * 
	 * @param description
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	
	/**
	 * uid
	 * 
	 * @param uid
	 */
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	
	/**
	 * status
	 * 
	 * @param status
	 */
	public void setStatus(String status) {
		this.status = status;
	}
	
	/**
	 * createdtime
	 * 
	 * @param createdtime
	 */
	public void setCreatedtime(Date createdtime) {
		this.createdtime = createdtime;
	}
	

}