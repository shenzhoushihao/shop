package com.corp.project.dao.po;

import aos.framework.core.typewrap.PO;
import java.util.Date;

/**
 * <b>product[product]数据持久化对象</b>
 * <p>
 * 注意:此文件由AOS平台自动生成-禁止手工修改。
 * </p>
 * 
 * @author shaowenwen
 * @date 2018-05-03 17:09:55
 */
public class ProductPO extends PO {

	private static final long serialVersionUID = 1L;

	/**
	 * 流水号
	 */
	private Integer id;
	
	/**
	 * 产品名称
	 */
	private String pname;
	
	/**
	 * 产品图片
	 */
	private String imgsrc;
	
	/**
	 * 市场价格
	 */
	private String oldprice;
	
	/**
	 * 当前价格
	 */
	private String newprice;
	
	/**
	 * 是否上架
	 */
	private String status;
	
	/**
	 * 库存
	 */
	private Integer stocknum;
	
	/**
	 * 类别
	 */
	private Integer type;
	
	/**
	 * description
	 */
	private String description;
	
	/**
	 * user_id
	 */
	private Integer user_id;
	
	/**
	 * 发布时间
	 */
	private Date createdtime;
	
	/**
	 * 上架时间
	 */
	private Date updatedtime;
	

	/**
	 * 流水号
	 * 
	 * @return id
	 */
	public Integer getId() {
		return id;
	}
	
	/**
	 * 产品名称
	 * 
	 * @return pname
	 */
	public String getPname() {
		return pname;
	}
	
	/**
	 * 产品图片
	 * 
	 * @return imgsrc
	 */
	public String getImgsrc() {
		return imgsrc;
	}
	
	/**
	 * 市场价格
	 * 
	 * @return oldprice
	 */
	public String getOldprice() {
		return oldprice;
	}
	
	/**
	 * 当前价格
	 * 
	 * @return newprice
	 */
	public String getNewprice() {
		return newprice;
	}
	
	/**
	 * 是否上架
	 * 
	 * @return status
	 */
	public String getStatus() {
		return status;
	}
	
	/**
	 * 库存
	 * 
	 * @return stocknum
	 */
	public Integer getStocknum() {
		return stocknum;
	}
	
	/**
	 * 类别
	 * 
	 * @return type
	 */
	public Integer getType() {
		return type;
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
	 * user_id
	 * 
	 * @return user_id
	 */
	public Integer getUser_id() {
		return user_id;
	}
	
	/**
	 * 发布时间
	 * 
	 * @return createdtime
	 */
	public Date getCreatedtime() {
		return createdtime;
	}
	
	/**
	 * 上架时间
	 * 
	 * @return updatedtime
	 */
	public Date getUpdatedtime() {
		return updatedtime;
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
	 * 产品名称
	 * 
	 * @param pname
	 */
	public void setPname(String pname) {
		this.pname = pname;
	}
	
	/**
	 * 产品图片
	 * 
	 * @param imgsrc
	 */
	public void setImgsrc(String imgsrc) {
		this.imgsrc = imgsrc;
	}
	
	/**
	 * 市场价格
	 * 
	 * @param oldprice
	 */
	public void setOldprice(String oldprice) {
		this.oldprice = oldprice;
	}
	
	/**
	 * 当前价格
	 * 
	 * @param newprice
	 */
	public void setNewprice(String newprice) {
		this.newprice = newprice;
	}
	
	/**
	 * 是否上架
	 * 
	 * @param status
	 */
	public void setStatus(String status) {
		this.status = status;
	}
	
	/**
	 * 库存
	 * 
	 * @param stocknum
	 */
	public void setStocknum(Integer stocknum) {
		this.stocknum = stocknum;
	}
	
	/**
	 * 类别
	 * 
	 * @param type
	 */
	public void setType(Integer type) {
		this.type = type;
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
	 * user_id
	 * 
	 * @param user_id
	 */
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	
	/**
	 * 发布时间
	 * 
	 * @param createdtime
	 */
	public void setCreatedtime(Date createdtime) {
		this.createdtime = createdtime;
	}
	
	/**
	 * 上架时间
	 * 
	 * @param updatedtime
	 */
	public void setUpdatedtime(Date updatedtime) {
		this.updatedtime = updatedtime;
	}
	

}