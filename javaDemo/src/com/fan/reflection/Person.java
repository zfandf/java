package com.fan.reflection;

import java.io.Serializable;
import java.lang.reflect.Method;

public class Person extends Human implements Serializable, Comparable {

	String address;
	public String nick;
	protected String phone; 
	
	private String name;
	private int age;
	
	Person() {
	}
	
	Person(String name, int age) {
		this.name = name;
		this.age = age;
	}
	
	public Person(String name) {
		this.name = name;
	}
	
	private Person(int age) {
		this.age = age;
	}
	

	public String getName() {
		return name;
	}

	public void setName(String name, int age) {
		this.name = name;
		this.age = age;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "姓名:" + this.name + ", 年龄:" + this.age;
	}
	
	private void updateName (String name) {
		this.name = name;
	}
	
	public void sayHello(String[] args) {
		System.out.println("hello");
	}
	
	public static void main(String[] args) throws Exception {
		Class<?> c = Class.forName("com.fan.reflection.Person");
		Method m = c.getDeclaredMethod("updateName", new Class[]{String.class});
		Person p = (Person)c.newInstance();
		m.invoke(p, "凡凡");
		System.out.println(p.getName());
	}

	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
