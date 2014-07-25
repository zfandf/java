/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mobilewoo
 */
public class Cat extends Animal implements CatchMouse {

    @Override
    public void catchMouse() {
        System.out.println("我的本领就是捉耗子");
    }
    
}
