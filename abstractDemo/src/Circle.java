/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mobilewoo
 */
public class Circle extends Shape {
    int r; // 半径
    final double PI = 3.14;// 圆周率
    
    Circle(int r) {
        this.r = r;
    }

    @Override
    public double getCircle() {
        return 2*PI*r;
    }

    @Override
    public double getArea() {
        return PI*r*r;
    }
    
    
}
