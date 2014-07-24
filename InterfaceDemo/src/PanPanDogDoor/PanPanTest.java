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
public class PanPanTest {
    public static void main(String[] args) {
        Door d = new PanPanDoor();
        d.open();
        d.close();
        ((PanPanDoor)d).alarm();
    }
}
