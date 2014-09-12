package com.fan.reflection;

import org.junit.Test;

/**
 * 通过反射获取类的四中方式
 * @author fan
 * 
 */
public class PersonTest {
	
	@Test
	public void test1() {
		/*
		 * 方式一: 使用对象的 getClass()
		 */
		Person p = new Person();
		Class<?> c = p.getClass();
		System.out.println(c.getName());
	}
	
	@Test
	public void test2() throws Exception {
		/*
		 * 方式二: 使用 static method Class.forName(类名) 
		 * 该方式最常被使用, 类名是绝对完整的, 包名.类名
		 * 该方式会抛出异常
		 */
		Class<?> c = Class.forName("com.fan.reflection.Person");
		System.out.println(c.getName());
	}
	
	@Test
	public void test3() {
		/*
		 * 方式三: 使用 .class
		 */
		Class<?> c = Person.class;
		System.out.println(c.getName());
	}
	
	@Test
	public void test4() {
		/*
		 * 方式四: 如果是 JAVA 封装类, 使用 TYPE 类型
		 */
		Class<?> c = Integer.TYPE;
		System.out.println(c.getName());
	}
}
