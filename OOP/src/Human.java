/**
 * 人类
 * @author YASHIRO
 *
 */
public class Human {

	// 属性
	String name; // 姓名
	String gender; // 性别
	int age; // 年龄
	
	// 方法
	// 思考
	public void thinking() {
		System.out.println("正在思考");
	}
	// 吃饭
	public void eat() {
		System.out.println("正在吃东西");
	}
	// 睡觉
	public void sleep() {
		System.out.println("正在睡觉");
	}
	
	// 自我介绍
	public void introduce() {
		System.out.println("我叫"+this.name+", 性别："+this.gender+", 今年"+this.age+"岁");
	}
	
	public static void main(String[] args) {
		Human man = new Human();
		man.name = "张三";
		man.gender = "男";
		man.age = 20;
		man.introduce();
	}
}
