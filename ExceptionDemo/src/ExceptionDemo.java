
class Person {

	Person() {

	}

	public void sayHello() {
		System.out.println("大家好");
	}
}

public class ExceptionDemo {

	public static Person p; // 这个引用不指向任何对象，没有有效的内存空间，

	public static void fn() {
		try {
			p.sayHello(); // 没有指向的引用不能进行调用，空指针异常， 属于运行时异常
		} catch (Exception e) {
			e.printStackTrace();
			// System.exit(0); // 程序无条件退出，碰到该语句，程序退出，finally不执行
			return; // 碰到return语句，finally也是会执行的
		} finally {
			System.out.println("我要被执行");
		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		try {
			// Person p = new Person();
			ExceptionDemo.fn();

			int[] arr = {1,2,3};
			System.out.println(arr[3]);// 数组下标越界异常 ArrayIndexOutOfBoundsException

			// int x = 10;
			// int y = 0;
			// System.out.println(x/y);// 在运行时会抛出异常

			Class.forName("cn.com.A"); // 要加载 cn.com.A 类
		} catch (ArithmeticException ex) {
			// ex.printStackTrace();
			System.out.println("分母不能为0");
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();// 打印异常
			System.out.println("class 加载失败");
		} finally {
			System.out.println("我一定要执行");
		}
		
	}

}
