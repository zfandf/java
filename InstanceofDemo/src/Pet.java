/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * 宠物类
 * @author mobilewoo
 */
public class Pet extends Animal {
    
    String name; // 宠物昵称
    
    // play with owner
    public void playWithOwner() {
        System.out.println(this.name + "palying whth owner");
    }
}
