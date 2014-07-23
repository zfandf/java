/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mobilewoo
 */
public class Trigle extends Shape {
    
    int a,b,c; // 三角形的三条边
    double p;
    
    Trigle(int a, int b, int c) {
        this.a = a;
        this.b = b;
        this.c = c;
        this.p = (a+b+c)/2.0;// 注意，分母必须是小数，否则精度会丢失
    }
    
    // 海伦公式： p = (a+b+c)/2; p*(p-a)*(p-b)*(p-c)的平方根
    @Override
    public double getCircle() {
        return a+b+c;
    }

    @Override
    public double getArea() {
        return Math.sqrt(p*(p-a)*(p-b)*(p-c));
    }
}
