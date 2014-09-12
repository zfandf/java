package com.fan.reflection;

import java.lang.reflect.Field;

/**
 * 通过反射获得属性信息
 * Field
 * @author fan
 *
 */
public class FieldTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			Class<?> c = Class.forName("com.fan.reflection.Person");
			
			// 获得所有属性
			System.out.println("---------------------------------------\n获得所有属性");
			Field[] allfields = c.getDeclaredFields();
			for (int i = 0; i < allfields.length; i++) {
				System.out.println(allfields[i].toGenericString());
			}
			
			// 获得所有共有的属性
			System.out.println("---------------------------------------\n获得所有公共的属性");
			Field[] f1 = c.getFields();
			for (int i = 0; i < f1.length; i++) {
				System.out.println(f1[i].toGenericString());
			}
			
			try {
				// 获得指定名称的属性
				System.out.println("---------------------------------------\n获得指定名称的属性");
				Field f3 = c.getDeclaredField("address");
				System.out.println(f3.toGenericString());
				
				// 获得指定名称的共有属性
				System.out.println("---------------------------------------\n指定名称的公共属性");
				Field f2 = c.getField("nick");
				System.out.println(f2.toGenericString());
				
			} catch (NoSuchFieldException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (SecurityException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
