package com.fan.reflection;

public class InterfaceTest {
	
	public static void main(String[] args) {
		
		try {
			Class<?> c = Class.forName("com.fan.reflection.Person");
			Class[] interfaces = c.getInterfaces();
			System.out.println("获得所有接口信息");
			for (int i = 0; i < interfaces.length; i++) {
				System.out.println(interfaces[i].toString());
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
