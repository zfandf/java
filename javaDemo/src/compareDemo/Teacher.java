package compareDemo;

public class Teacher {
	
	public int id;
	public String name;
	public int age;
	
	public Teacher(int id, String name, int age) {
		// TODO Auto-generated constructor stub
		this.id = id;
		this.name = name;
		this.age = age;
	}
	
	public String toString() {
		return "ID: "+ this.id + ", 姓名: "+ this.name + ", 年龄: "+ this.age;
	}
}
