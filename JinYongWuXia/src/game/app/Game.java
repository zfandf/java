package game.app;

import game.logic.KongFuMaster;
import game.roles.LingHuChong;
import game.roles.OuYangFeng;

import java.util.Scanner;

public class Game {

	public static Scanner in = new Scanner(System.in);
	public static int chioce;
	
	public static KongFuMaster player;
	public static KongFuMaster computer;
	
	public static boolean isFirst = true; // 默认玩家打电脑
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Game.showMenu();// 显示菜单
		Game.init();// 初始化游戏
		
		do {
			Game.beginCombat(player, computer);
		} while (!Game.isComplete());
		
		Game.showResult();
	}
	
	public static void showMenu() {
		System.out.println("************欢迎进入金庸群侠传***********");
		System.out.println("1.令狐冲   2.欧阳峰");
		System.out.println("请选择：");
		chioce = in.nextInt();
	}
	
	public static void init() {
		switch(chioce) {
			case 1: 
				player = new LingHuChong("令狐冲");
				computer = new OuYangFeng("欧阳峰");
				break;
			case 2:
				player = new OuYangFeng("欧阳峰");
				computer = new LingHuChong("令狐冲");
				break;
		}
		System.out.println("您选择了角色："+player.getName());
	}
	
	public static void beginCombat(KongFuMaster player, KongFuMaster computer) {
		// 生成一个1到3之间的随机数
		int temp = (int)(Math.random()*10)%3; // 0-2
		temp++;
		switch(temp) {
			case 1:
				if (Game.isFirst) {
					player.commonSkill(computer);
				} else {
					computer.commonSkill(player);
				}
				break;
			case 2:
				if (Game.isFirst) {
					player.bestSkill(computer);
				} else {
					computer.bestSkill(player);
				}
				break;
			case 3:
				if (Game.isFirst) {
					player.secrets(computer);
				} else {
					computer.secrets(player);
				}
				break;
		}
		Game.isFirst = !Game.isFirst;
	}
	
	public static boolean isComplete() {
		if (Game.player.getBlood() <= 0 || Game.computer.getBlood() <= 0) {
			return true;
		} else {
			return false;
		}
	}
	
	public static void showResult() {
		if (Game.player.getBlood() <= 0) {
			System.out.println("君子报仇十年不晚，咱们后会有期");
		} else {
			System.out.println("别羡慕哥，哥只是个传说。。。。");
		}
	}

}
