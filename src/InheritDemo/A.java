/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package InheritDemo;

/**
 *
 * @author mobilewoo
 */
public class A {
    
    String name = "张三";
    
    A() {
        System.out.println("A contructor no params");
    }
    
    A(String name) {
        this.name = name;
        System.out.println("A contructor have params: "+this.name);
    }
    
    void fn() {
        System.out.println("this is a function for A");
    }
}
