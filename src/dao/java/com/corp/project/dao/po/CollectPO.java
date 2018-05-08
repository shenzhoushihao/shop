package com.corp.project.dao.po;

import aos.framework.core.typewrap.PO;
import java.util.Date;

/**
 * <b>collect[collect]数据持久化对象</b>
 * <p>
 * 注意:此文件由AOS平台自动生成-禁止手工修改。
 * </p>
 * 
 * @author shaowenwen
 * @date 2018-05-03 19:09:27
 */
public class CollectPO extends PO {

	private static final long serialVersionUID = 1L;

	/**
	 * id
	 */
	private Integer id;
	
	/**
	 * 商品ID
	 */
	private Integer pid;
	
	/**
	 * 用户ID
	 */
	private Integer uid;
	
	/**
	 * 商品数量
	 */
	private Integer num;
	
	/**
	 * 收藏日期
	 */
	private Date createdtime;
	

	/**
	 * id
	 * 
	 * @return id
	 */
	public Integer getId() {
		return id;
	}
	
	/**
	 * 商品ID
	 * 
	 * @return pid
	 */
	public Integer getPid() {
		return pid;
	}
	
	/**
	 * 用户ID
	 * 
	 * @return uid
	 */
	public Integer getUid() {
		return uid;
	}
	
	/**
	 * 商品数量
	 * 
	 * @return num
	 */
	public Integer getNum() {
		return num;
	}
	
	/**
	 * 收藏日期
	 * 
	 * @return createdtime
	 */
	public Date getCreatedtime() {
		return createdtime;
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
	 * 商品ID
	 * 
	 * @param pid
	 */
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	
	/**
	 * 用户ID
	 * 
	 * @param uid
	 */
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	
	/**
	 * 商品数量
	 * 
	 * @param num
	 */
	public void setNum(Integer num) {
		this.num = num;
	}
	
	/**
	 * 收藏日期
	 * 
	 * @param createdtime
	 */
	public void setCreatedtime(Date createdtime) {
		this.createdtime = createdtime;
	}
	

}