package game.logic;

// 会武功的人
public class KongFuPerson extends Person {
	
	public int blood = 1000;
	
	public int getBlood() {
		return blood;
	}

	public void setBlood(int blood) {
		this.blood = blood;
	}

	KongFuPerson() {
		
	}
	
	KongFuPerson(String name) {
		this.name = name;
	}
	
	// 普通招数, 传入对象为攻击的敌人
	public void commonSkill(KongFuPerson p) {
		p.blood -= 50; // 攻击敌人，敌人掉血
	}
	
	// 杀招
	public void bestSkill(KongFuPerson p) {
		p.blood -= 100;
	}
}
