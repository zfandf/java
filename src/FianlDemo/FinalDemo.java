package FianlDemo;

public class FinalDemo {

    final int NUM = 1;
    final int NUM2;
    final Person p;

    FinalDemo() {
        this.NUM2 = 1;
        // this.NUM2 = 2; // 错误，统一个final数据不能进行二次赋值
        this.p = new Person("无名氏", 20);
        System.out.println("one final demo");
    }

    public static void main(String[] args) {
        FinalDemo f = new FinalDemo();
        // f.p = new Person("张三丰", 20); // 错误，对象不能变
        Person p = new Person("张飞", 20);
        f.changeInfo(p);
        p.showInfo();
    }

    void changeInfo(final Person p) {
//        p = new Person("张三丰", 20); // 错误，对象不可以改变
        p.name = "张三丰"; // 正确，对象的值可以改变
    }
}