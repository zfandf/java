package game.roles;

import game.logic.KongFuMaster;
import game.logic.KongFuPerson;

public class LingHuChong extends KongFuMaster {
	
	public LingHuChong() {
		
	}
	
	public LingHuChong(String name) {
		this.name = name;
	}

	@Override
	public void secrets(KongFuPerson p) {
		// TODO Auto-generated method stub
		super.secrets(p);
		System.out.println(this.getName()+"使用绝学独孤九剑攻击"+p.getName()+"300点血");
	}

	@Override
	public void commonSkill(KongFuPerson p) {
		// TODO Auto-generated method stub
		super.commonSkill(p);
		System.out.println(this.getName()+"使用普招越女剑法攻击"+p.getName()+"50点血");
	}

	@Override
	public void bestSkill(KongFuPerson p) {
		// TODO Auto-generated method stub
		super.bestSkill(p);
		System.out.println(this.getName()+"使用杀招华山剑法攻击"+p.getName()+"100点血");
	}
}
