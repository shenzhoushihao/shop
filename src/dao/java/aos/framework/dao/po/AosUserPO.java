package aos.framework.dao.po;

import aos.framework.core.typewrap.PO;
import java.util.Date;

/**
 * <b>aos_user[aos_user]数据持久化对象</b>
 * <p>
 * 注意:此文件由AOS平台自动生成-禁止手工修改。
 * </p>
 * 
 * @author shaowenwen
 * @date 2018-05-03 16:33:54
 */
public class AosUserPO extends PO {

	private static final long serialVersionUID = 1L;

	/**
	 * 流水号
	 */
	private Integer id;
	
	/**
	 * 用户登录帐号
	 */
	private String account;
	
	/**
	 * 密码
	 */
	private String password;
	
	/**
	 * 用户姓名
	 */
	private String name;
	
	/**
	 * 性别
	 */
	private String sex;
	
	/**
	 * 用户状态
	 */
	private String status;
	
	/**
	 * 所属部门流水号
	 */
	private Integer college_id;
	
	/**
	 * 电子邮件
	 */
	private String email;
	
	/**
	 * 联系电话
	 */
	private String telephone;
	
	/**
	 * 是否已删除
	 */
	private String is_del;
	
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
	 * 用户登录帐号
	 * 
	 * @return account
	 */
	public String getAccount() {
		return account;
	}
	
	/**
	 * 密码
	 * 
	 * @return password
	 */
	public String getPassword() {
		return password;
	}
	
	/**
	 * 用户姓名
	 * 
	 * @return name
	 */
	public String getName() {
		return name;
	}
	
	/**
	 * 性别
	 * 
	 * @return sex
	 */
	public String getSex() {
		return sex;
	}
	
	/**
	 * 用户状态
	 * 
	 * @return status
	 */
	public String getStatus() {
		return status;
	}
	
	/**
	 * 所属部门流水号
	 * 
	 * @return college_id
	 */
	public Integer getCollege_id() {
		return college_id;
	}
	
	/**
	 * 电子邮件
	 * 
	 * @return email
	 */
	public String getEmail() {
		return email;
	}
	
	/**
	 * 联系电话
	 * 
	 * @return telephone
	 */
	public String getTelephone() {
		return telephone;
	}
	
	/**
	 * 是否已删除
	 * 
	 * @return is_del
	 */
	public String getIs_del() {
		return is_del;
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
	 * 用户登录帐号
	 * 
	 * @param account
	 */
	public void setAccount(String account) {
		this.account = account;
	}
	
	/**
	 * 密码
	 * 
	 * @param password
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	
	/**
	 * 用户姓名
	 * 
	 * @param name
	 */
	public void setName(String name) {
		this.name = name;
	}
	
	/**
	 * 性别
	 * 
	 * @param sex
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	/**
	 * 用户状态
	 * 
	 * @param status
	 */
	public void setStatus(String status) {
		this.status = status;
	}
	
	/**
	 * 所属部门流水号
	 * 
	 * @param college_id
	 */
	public void setCollege_id(Integer college_id) {
		this.college_id = college_id;
	}
	
	/**
	 * 电子邮件
	 * 
	 * @param email
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	
	/**
	 * 联系电话
	 * 
	 * @param telephone
	 */
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	
	/**
	 * 是否已删除
	 * 
	 * @param is_del
	 */
	public void setIs_del(String is_del) {
		this.is_del = is_del;
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