package com.fan.reflection;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * 通过反射获取成员方法, 并使用反射获取的成员方法
 * @author fan
 *
 */
public class MethodTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("-----------------------------------------");
		System.out.println("-----         I am comming          -----");
		
		try {
			Class<?> c = Class.forName("com.fan.reflection.Person");
			
			System.out.println("-----------------------------------------\n获得自定义的成员方法:\n--");
			Method[] m1s = c.getDeclaredMethods();
			for (int i = 0; i < m1s.length; i++) {
				System.out.println(m1s[i].toGenericString());
			}
			
			System.out.println("-----------------------------------------\n获得公共的成员方法, 包括从父类和接口继承的方法:\n--");
			Method[] m2s = c.getMethods();
			for (int i = 0; i < m2s.length; i++) {
				System.out.println(m2s[i].toGenericString());
			}
			
			try {
				System.out.println("-----------------------------------------\n获得指定名称和参数的成员方法:\n--");
				Method m3 = c.getDeclaredMethod("updateName", new Class[]{String.class});
				System.out.println(m3.toGenericString());
				
				System.out.println("-----------------------------------------\n获得指定名称和参数的公共的成员方法, 包括从父类和接口继承的方法:\n--");
				Method m4 = c.getMethod("hashCode", new Class[]{});
				System.out.println(m4.toGenericString());
			} catch (NoSuchMethodException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SecurityException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			System.out.println("-----------------------------------------\n调用反射获得的成员方法:\n--");
			try {
				Method m6 = c.getMethod("sayHello", String[].class);
				System.out.println(m6.toGenericString());
				try {
					Person p = (Person)c.newInstance();
					try {
						m6.invoke("sayHello", new Object[]{new String[]{}});
					} catch (IllegalArgumentException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (InvocationTargetException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} catch (InstantiationException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IllegalAccessException e) {
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
