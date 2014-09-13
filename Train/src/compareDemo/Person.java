package compareDemo;

public class Person implements Comparable {
	public String name;
	public int age;
	
	public Person(String name, int age) {
		this.name = name;
		this.age = age;
	}
	
	@Override
	public int compareTo(Object o) {
		if (!(o instanceof Person)) {
			return -1;
		}
		Person p = (Person)o;
		if (this.age > p.age) {
			return 1;
		} else if (this.age < p.age) {
			return -1;
		} else {
			return 0;
		}
	}
	
//	@Override
//	public int hashCode() {
//		return this.name.hashCode() + this.age;
//	};
	
	@Override
	public boolean equals(Object obj) {
		if (!(obj instanceof Person)) {
			return false;
		}
		Person p = (Person)obj;
		if (p.name == this.name && p.age == this.age) {
			return true;
		} else {
			return false;
		}
	};
	
	@Override
	public String toString() {
		return "姓名: " + this.name + ", 年龄" + this.age;
	}
}