
import java.text.DecimalFormat;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mobilewoo
 */
public class ShapeTest {
    
    public static void main(String[] args) {
        Shape s;
//        s = new Trigle(3,4,5);
        s = new Circle(1);
        
        double area = s.getArea();
        double circle = s.getCircle();
        
        System.out.println("面积是："+new DecimalFormat("#0.00").format(area));
        System.out.println("周长是："+new DecimalFormat("#0.00").format(circle));
    }
    
    public String setDoubleNum(double d) {
        return new DecimalFormat("#0.00").format(d);
    }
}
