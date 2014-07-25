package phone;

public class MobileTest {
	public static void main(String [] args) {
		Samsung sanxing = new Samsung("三星", "白色");
		Apple apple = new Apple("苹果", "黑色");
		HTC htc = new HTC("HTC", "红色");
		
		sanxing.powerOn();
		sanxing.powerOff();
		sanxing.internet();
		
		apple.music();
		apple.camera();
		
		htc.sendMessage();
		htc.phone();
	}
}
