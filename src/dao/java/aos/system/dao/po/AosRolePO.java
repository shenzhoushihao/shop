package aos.system.dao.po;

import aos.framework.core.typewrap.PO;

/**
 * <b>aos_role[aos_role]数据持久化对象</b>
 * <p>
 * 注意:此文件由AOS平台自动生成-禁止手工修改。
 * </p>
 * 
 * @author shaowenwen
 * @date 2018-04-29 00:23:57
 */
public class AosRolePO extends PO {

	private static final long serialVersionUID = 1L;

	/**
	 * id
	 */
	private Integer id;
	
	/**
	 * rolename
	 */
	private String rolename;
	
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
	 * rolename
	 * 
	 * @return rolename
	 */
	public String getRolename() {
		return rolename;
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
	 * rolename
	 * 
	 * @param rolename
	 */
	public void setRolename(String rolename) {
		this.rolename = rolename;
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