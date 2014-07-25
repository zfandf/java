/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mobilewoo
 */
public class Dog extends Animal implements CatchMouse {

    @Override
    public void catchMouse() {
        System.out.println("狗拿耗子多管闲事");
    }
    
}
