/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package PanPanDogDoor;

/**
 *
 * @author mobilewoo
 */
public class PanPanDoor extends Door implements Alarm {

    @Override
    public void open() {
        System.out.println("盼盼开门");
    }

    @Override
    public void close() {
        System.out.println("盼盼关门");
    }

    @Override
    public void alarm() {
        System.out.println("小偷撬门了，赶紧报警");
    }
    
}
