
public class MyExceptionTest {
    
    public static void fn() throws MyException {
        // 抛出异常
        throw new MyException();
    }

    public static void main(String[] args) {
        System.out.println("haha");
        try {
            MyExceptionTest.fn();
        } catch (MyException ex) {
            System.out.println(ex);
        }
    }
}