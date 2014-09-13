package com.fan.reflection.proxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class MyDinnerProxy implements InvocationHandler {

	private Object originalObj;

	/*
	 * 绑定被代理对象, 返回一个代理对象
	 */
	public Object bind(Object obj) {
		this.originalObj = obj;
		// 返回一个代理对象
		return Proxy.newProxyInstance(obj.getClass().getClassLoader(), obj.getClass().getInterfaces(), this);
	}
	
	private void prevDinner() {
		System.out.println("吃饭前先洗手");
	}
	
	private void afterDinner() {
		System.out.println("吃饭结束啦, 洗碗开始啦..");
	}
	
	@Override
	public Object invoke(Object proxy, Method method, Object[] args)
			throws Throwable {
		// TODO Auto-generated method stub
		Object result = null;
		prevDinner();
		result = method.invoke(this.originalObj, args);
		afterDinner();
		return result;
	}
	
}
