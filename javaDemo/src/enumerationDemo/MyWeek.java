package enumerationDemo;

/**
 * Enumeration 枚举
 * 枚举类型不是类,不能使用构造方法去实例化, 枚举类型都是静态的 final 常量, private static final
 * 枚举里面放的都是静态的常量,
 * @author fan
 *
 */
public enum MyWeek {
	
	// 直接定义枚举类型常量, 一般都是大写子字母,字母之间用","分割
	SUNDAY("周日"), MONDAY("周一"), TUESDAY("周二"), WEDNESDAY("周三"), THURSDAY("周四"), FRIDAY("周五"), SATURDAY("周六");
	
	private String name;
	private String food;
	private String[] FOODS = {"超市小碗菜", "黄闷鸡", "老重庆", "酱肉铺", "香河肉饼", "饺子", "老家肉饼"};
	
	MyWeek() {
		System.out.println("one week day start...");
	}
	
	MyWeek(String name) {
		// TODO Auto-generated constructor stub
		this.name = name;
//		this.ordinal();
//		Math.random();
	}
	
	public String getName() {
		return this.name;
	}
	
	public void setFood(String food) {
		this.food = food;
	}
	
	public String getFood() {
		return this.food;
	}
}
