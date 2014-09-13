package compareDemo;

public class Student implements Comparable {
	
	public int id;
	public String name;
	public int age;
	
	public Student(int id, String name, int age) {
		// TODO Auto-generated constructor stub
		this.id = id;
		this.name = name;
		this.age = age;
	}

	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		if (o instanceof Student) {
			Student s = (Student)o;
			if (this.id > s.id) {
				return 1;
			} else if (this.id < s.id) {
				return -1;
			} else {
				return 0;
			}
		} else {
			return -1;
		}
	}
	
	public String toString() {
		return "ID: "+ this.id + ", 姓名: "+ this.name + ", 年龄: "+ this.age;
	}
}
