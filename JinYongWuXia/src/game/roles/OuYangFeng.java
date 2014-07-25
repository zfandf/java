package game.roles;

import game.logic.KongFuMaster;
import game.logic.KongFuPerson;

public class OuYangFeng extends KongFuMaster {
	
	public OuYangFeng() {
		
	}
	
	public OuYangFeng(String name) {
		this.name = name;
	}

	@Override
	public void secrets(KongFuPerson p) {
		// TODO Auto-generated method stub
		super.secrets(p);
		System.out.println(this.getName()+"使用绝学毒蛇拐杖攻击"+p.getName()+"300点血");
	}

	@Override
	public void commonSkill(KongFuPerson p) {
		// TODO Auto-generated method stub
		super.commonSkill(p);
		System.out.println(this.getName()+"使用普招毒蛇攻击"+p.getName()+"50点血");
	}

	@Override
	public void bestSkill(KongFuPerson p) {
		// TODO Auto-generated method stub
		super.bestSkill(p);
		System.out.println(this.getName()+"使用杀招蛤蟆功攻击"+p.getName()+"100点血");
	}

}
