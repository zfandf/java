/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mobilewoo
 */
public class InterfaceTest implements InterfaceDemo, InterfaceDemo2 {

    @Override
    public void fn() {
        System.out.println("调用fn");
    }
    
    public static void main(String[] args) {
        InterfaceTest it = new InterfaceTest();
        it.fn();
        System.out.println(InterfaceTest.num);
    }
}
