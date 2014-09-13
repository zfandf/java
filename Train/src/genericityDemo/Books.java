package genericityDemo;

public class Books {
	
	public String name;
	public String press;
	public double price;
	
	Books(String name, String press, double price) {
		// TODO Auto-generated constructor stub
		this.name = name;
		this.press = press;
		this.price = price;
	}
	
	void showInfo() {
		System.out.println("书名:" + this.name + ", 出版社:" + this.press + ", 价格:" + this.price);
	}
}
