package tools;

public class TestToBinaryString {

	final static char[] digits = {
        '0' , '1' , '2' , '3' , '4' , '5' ,
        '6' , '7' , '8' , '9' , 'a' , 'b' ,
        'c' , 'd' , 'e' , 'f' , 'g' , 'h' ,
        'i' , 'j' , 'k' , 'l' , 'm' , 'n' ,
        'o' , 'p' , 'q' , 'r' , 's' , 't' ,
        'u' , 'v' , 'w' , 'x' , 'y' , 'z'
    };
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		System.out.println(1<<2); // =4 1左移2位, 相当于1*2^2  0001->0010->0100
//		System.out.println(5>>2); // =1 5右移2位, 相当于5/(2^2) 0101->0010->0001
//		
//		int i = 10; // 1010
//		int j = 10; // 1010
//		int k = 2;
//		System.out.println(i>>>k); // =2  >>> 无符号右移, i右移j 位, 相当于 i/(2^j)  1010->0101->0010
//		System.out.println(i); // =10 只读, 并不重新赋值
//		
//		System.out.println(j>>>=k); // =2 右移并赋值,
//		System.out.println(j); // = 2
		
		System.out.println(toBinaryString(-2));
	}

	public static String toBinaryString(int i) {
        return toUnsignedString(i, 1);
    }

    /**
     * Convert the integer to an unsigned number.
     */
    private static String toUnsignedString(int i, int shift) {
        char[] buf = new char[32];
        int charPos = 32;
        int radix = 1 << shift;	// 0001 左移动一位 0010, 
        int mask = radix - 1;
        do {
            buf[--charPos] = digits[i & mask]; // i = 2, mask = 1; 0010&0001=0000
            i >>>= shift; // 无符号右移 并重新给 i 赋值
        } while (i != 0);

        return new String(buf, charPos, (32 - charPos));
    }
}
