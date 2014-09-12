package com.fan.reflection.proxy;

import org.junit.Test;

/**
 * 测试 Dinner 代理
 * @author fan
 *
 */
public class MyDinnerTest {

	/*
	 * 不实用代理对象
	 */
	@Test
	public void test1() {
		Dinner dinner = new MyDinner();
		dinner.haveDinner();
	}
	
	/*
	 * 使用代理对象
	 */
	@Test
	public void test2() {
		Dinner dinner = new MyDinner();
		dinner = (Dinner)new MyDinnerProxy().bind(dinner);
		dinner.haveDinner();
	}
	
}
