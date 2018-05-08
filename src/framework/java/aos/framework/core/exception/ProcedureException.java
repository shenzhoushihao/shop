package aos.framework.core.exception;


/**
 * <b>存储过程调用异常</b>
 * 
 * @author xiongchun
 */
public class ProcedureException extends RuntimeException{

	private static final long serialVersionUID = 1L;

	public ProcedureException() {
		super();
	}
	
	/**
	 * 异常
	 * 
	 * @param prcName
	 * @param appCode
	 * @param appMsg
	 */
	public ProcedureException(String prcName, String appCode, String appMsg) {
		super("存储过程调用异常。状态码：" + appCode + "。状态信息： " + appMsg + "。");		
	}
}
