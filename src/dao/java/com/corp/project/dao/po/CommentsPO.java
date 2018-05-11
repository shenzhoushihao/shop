package com.corp.project.dao.po;

import aos.framework.core.typewrap.PO;
import java.util.Date;

/**
 * <b>comments[comments]数据持久化对象</b>
 * <p>
 * 注意:此文件由AOS平台自动生成-禁止手工修改。
 * </p>
 * 
 * @author shaowenwen
 * @date 2018-05-10 17:17:57
 */
public class CommentsPO extends PO {

	private static final long serialVersionUID = 1L;

	/**
	 * 流水号
	 */
	private Integer id;
	
	/**
	 * 需求流水号
	 */
	private Integer sid;
	
	/**
	 * 留言
	 */
	private String word;
	
	/**
	 * 用户流水号
	 */
	private Integer uid;
	
	/**
	 * 创建时间
	 */
	private Date createdtime;
	

	/**
	 * 流水号
	 * 
	 * @return id
	 */
	public Integer getId() {
		return id;
	}
	
	/**
	 * 需求流水号
	 * 
	 * @return sid
	 */
	public Integer getSid() {
		return sid;
	}
	
	/**
	 * 留言
	 * 
	 * @return word
	 */
	public String getWord() {
		return word;
	}
	
	/**
	 * 用户流水号
	 * 
	 * @return uid
	 */
	public Integer getUid() {
		return uid;
	}
	
	/**
	 * 创建时间
	 * 
	 * @return createdtime
	 */
	public Date getCreatedtime() {
		return createdtime;
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
	 * 需求流水号
	 * 
	 * @param sid
	 */
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	
	/**
	 * 留言
	 * 
	 * @param word
	 */
	public void setWord(String word) {
		this.word = word;
	}
	
	/**
	 * 用户流水号
	 * 
	 * @param uid
	 */
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	
	/**
	 * 创建时间
	 * 
	 * @param createdtime
	 */
	public void setCreatedtime(Date createdtime) {
		this.createdtime = createdtime;
	}
	

}