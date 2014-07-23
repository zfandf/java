/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package FianlDemo;

/**
 *
 * @author mobilewoo
 */
public class Person {
    String name;
    int age;
    Person() {}

    Person (String name, int age) {
        this.name = name;
        this.age = age;
    }

    public void showInfo() {
        System.out.println("姓名："+this.name+" 年龄："+this.age);
    }
}
