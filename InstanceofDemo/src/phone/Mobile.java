package phone;

public abstract class Mobile {
	
	String brand; // 手机品牌
	String color; // 颜色
	
	// power on
	public void powerOn() {
		// TODO Auto-generated method stub
		System.out.println(this.brand + "牌手机开机");
	}
	
	// power off
	public void powerOff() {
		// TODO Auto-generated method stub
		System.out.println(this.brand + "牌手机关机");
	}
	
	// send message
	public void sendMessage() {
		// TODO Auto-generated method stub
		System.out.println(this.brand + "牌手机发送短信");
	}
	
	// phone
	public void phone() {
		// TODO Auto-generated method stub
		System.out.println(this.brand + "牌手机打电话");
	}
}
