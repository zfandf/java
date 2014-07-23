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
public class B extends A {
    
    String name = "李四";
    
    B() {
        System.out.println("B contructor no params");
    }
    
    B(String name) {
        super(name);
        this.name = name;
        System.out.println("B contructor have params: "+this.name);
    }
    
    @Override
    void fn() {
        System.out.println("this is a function for B");
    }
    
    public static void main(String [] args) {
        B b = new B();
        System.out.println("这是一个分割线，开始调用带参数构造方法");
        B b1 = new B("namevalue");
//        A a = new B();
//        // 属性的值取决于引用类型，不取决于对象
//        System.out.println(b.name);
//        System.out.println(a.name);
//        
//        // 方法有多态性，方法的行为取决于对象，不取决于引用类型
//        a.fn();
//        b.fn();
        
        
    }
}
