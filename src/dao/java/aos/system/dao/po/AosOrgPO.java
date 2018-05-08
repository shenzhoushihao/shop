package aos.system.dao.po;

import aos.framework.core.typewrap.PO;

/**
 * <b>aos_org[aos_org]数据持久化对象</b>
 * <p>
 * 注意:此文件由AOS平台自动生成-禁止手工修改。
 * </p>
 * 
 * @author shaowenwen
 * @date 2018-04-29 00:23:57
 */
public class AosOrgPO extends PO {

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
	 * cname
	 * 
	 * @return cname
	 */
	public String getCname() {
		return cname;
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
	 * cname
	 * 
	 * @param cname
	 */
	public void setCname(String cname) {
		this.cname = cname;
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