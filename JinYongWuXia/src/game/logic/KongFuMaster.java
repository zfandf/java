package game.logic;

// 武功高手类
public class KongFuMaster extends KongFuPerson implements Secrets {

	@Override
	public void secrets(KongFuPerson p) {
		// TODO Auto-generated method stub
		p.blood -= 300;
	}

}
