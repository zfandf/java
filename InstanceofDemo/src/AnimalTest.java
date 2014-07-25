/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mobilewoo
 */
public class AnimalTest {
    
    public static void checkAnimal(Animal a) {
        if (a instanceof Pet) {
            System.out.println("I am a pet");
            if (a instanceof CatchMouse) {
                System.out.println("I can catch mouse");
            } else {
                System.out.println("I can't catch mouse");
            }
        } else {
            System.out.println("I am not a pet");
        }
    }
    
    public static void main(String[] args) {
        Animal tiger = new Tiger();
        AnimalTest.checkAnimal(tiger);
        
        Animal cat = new Cat();
        AnimalTest.checkAnimal(cat);
        
        Animal bird = new Bird();
        AnimalTest.checkAnimal(bird);
    }
}
