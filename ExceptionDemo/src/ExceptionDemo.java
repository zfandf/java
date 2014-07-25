
public class ExceptionDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		try {
			Class.forName("cn.com.A"); // 要加载 cn.com.A 类
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();// 打印异常
			System.out.println("class 加载失败");
		}
		
	}

}
