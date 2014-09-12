package com.fan.reflection;

/**
 * 获得父类信息
 * @author fan
 *
 */
public class SuperClassTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			Class<?> c = Class.forName("com.fan.reflection.Person");
			Class<?> sc = c.getSuperclass();
			System.out.println(sc.toString());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
