package aos.system.dao.po;

import aos.framework.core.typewrap.PO;
import java.util.Date;

/**
 * <b>aos_user_role[aos_user_role]数据持久化对象</b>
 * <p>
 * 注意:此文件由AOS平台自动生成-禁止手工修改。
 * </p>
 * 
 * @author shaowenwen
 * @date 2018-04-29 00:23:57
 */
public class AosUserRolePO extends PO {

	private static final long serialVersionUID = 1L;

	/**
	 * 流水号
	 */
	private Integer id;
	
	/**
	 * 用户流水号
	 */
	private Integer user_id;
	
	/**
	 * 角色流水号
	 */
	private Integer role_id;
	
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
	 * 用户流水号
	 * 
	 * @return user_id
	 */
	public Integer getUser_id() {
		return user_id;
	}
	
	/**
	 * 角色流水号
	 * 
	 * @return role_id
	 */
	public Integer getRole_id() {
		return role_id;
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
	 * 用户流水号
	 * 
	 * @param user_id
	 */
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	
	/**
	 * 角色流水号
	 * 
	 * @param role_id
	 */
	public void setRole_id(Integer role_id) {
		this.role_id = role_id;
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