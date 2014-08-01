package ATM;

/**
 * 用户自定义异常类
 * @author mobilewoo
 *
 */
public class ATMException extends Exception {
	
	String msg;// 异常消息
	
	ATMException(String msg) {
		this.msg = msg;
	}
	
	public String toString() {
		return this.msg;
	}
}
