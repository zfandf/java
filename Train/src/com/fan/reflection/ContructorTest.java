package com.fan.reflection;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

public class ContructorTest {
	
	public static void main(String[] args) {
		try {
			Class<?> cls = Class.forName("com.fan.reflection.Person");
			System.out.println(cls.getName());
			// 获得所有构造方法, 没有级别限制
			System.out.println("所有构造方法:");
			Constructor[] cons1 = cls.getDeclaredConstructors();
			for (int i = 0; i < cons1.length; i++) {
				System.out.println(cons1[i].toGenericString());
			}
			
			// 获得带有指定参数的构造方法, 没有级别限制
			System.out.println("带有指定参数的构造方法:");
			try {
				Constructor cons = cls.getDeclaredConstructor(new Class[] {String.class});
				System.out.println(cons.toGenericString());
			} catch (Exception ex) {
				System.out.println("指定参数的构造方法不存在");
			}
			
			// 获得所有公共构造方法
			System.out.println("所有公共构造方法:");
			Constructor[] cons2 = cls.getConstructors();
			for (Constructor cons: cons2) {
				System.out.println(cons.toGenericString());
			}
			
			// 获得带有指定参数的公共的构造方法
			System.out.println("带有指定参数的构造方法:");
			try {
				Constructor cons3 = cls.getConstructor(new Class[] {String.class});
				System.out.println(cons3.toGenericString());
			} catch (Exception ex) {
				// TODO: handle exception
				System.out.println("带有指定参数的公共构造方法不存在");
			}
			
		} catch (ClassNotFoundException ex) {
			// TODO: handle exception
			ex.printStackTrace();
		}
		
		
		// 动态实例化对象
		System.out.println("动态实例化对象:");
		try {
			Class<?> c = Class.forName("com.fan.reflection.Person");
			try {
				Constructor cons5 = c.getDeclaredConstructor(new Class[]{String.class, int.class});
				try {
					Person p1 = (Person)cons5.newInstance("张三丰", 20);
					System.out.println("使用反射机制动态实例化对象:");
					System.out.println(p1);
					
					System.out.println(c.getDeclaredConstructor(new Class[]{int.class}).newInstance(11));
				} catch (InstantiationException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IllegalArgumentException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (InvocationTargetException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} catch (NoSuchMethodException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SecurityException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
