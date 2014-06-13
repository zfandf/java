/**
 * Ñ­»·
 * @author YASHIRO
 *
 */
public class LoopDemo {
	
	public static void main(String[] args) {
		LoopDemo ld = new LoopDemo();
		ld.doWhileLoop();
	}
	
	void doWhileLoop() {
		int i = 1;
		do {
			System.out.println(i);
			i++;
		} while (i < 100);
	}
}
