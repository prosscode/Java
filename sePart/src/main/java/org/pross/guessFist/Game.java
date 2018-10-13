package com.pross.guessfist;

import java.util.Scanner;

/**
 * @author maXpross
 *
 * @create 2017年12月20日
 *
 *         Content
 */
public class Game {
	private User user;
	private Computer computer;
	// 计算游戏次数
	int count;;
	Scanner input = new Scanner(System.in);
	
	public Game(){
		user=new User();
		computer=new Computer();
		count=0;
	}

	/**
	 * 开始游戏
	 */
	public void startGame() {
		// 游戏界面
		this.gameMenu();
		// 选择角色
		user.userSelectRole();
		computer.computerSelectRole();
		// 是否开始游戏
		System.out.print("要开始吗?(y/n)");
		String choose = input.next();
		if ("y".equals(choose)) {
			int u = user.userSelectFist();
			int c = computer.computerSelectFist();
			count++;
			if (u == c) {
				System.out.println("结果：和局，真衰！嘿嘿，等着瞧吧！");
			} else if (u == 1 && c == 3 || u == 2 && c == 1 | u == 3 && c == 2) {
				System.out.println("结果：(用户)" + User.uname + "赢了。");
				user.uscore++;
			} else {
				System.out.println("结果：(电脑)" + computer.cname + "赢了。");
				computer.cscore++;
			}
			
			// 继续游戏
			this.chooseStart();
			// 显示游戏结果
			this.resultGame();
		} else {
			
			this.resultGame();
		}
	}

	/**
	 * 继续游戏
	 */
	public void chooseStart() {
		boolean flag = true;
		while (flag) {
			System.out.print("\n是否要开始下一轮（y/n）:");
			String choose = input.next();
			switch (choose) {
			case "y":
				int u = user.userSelectFist();
				int c = computer.computerSelectFist();
				count++;
				if (u == c) {
					System.out.println("此轮：和局，真衰！嘿嘿，等着瞧吧！");
				} else if (u == 1 && c == 3 || u == 2 && c == 1 || u == 3 && c == 2) {
					System.out.println("此轮" + User.uname + "(用户)赢了。");
					user.uscore++;
				} else {
					System.out.println("此轮" + computer.cname + "(电脑)赢了。");
					computer.cscore++;
				}
				break;
			case "n":
				flag = false;
				break;
			}
		}
	}

	/**
	 * 游戏界面
	 */
	public void gameMenu() {
		System.out.println("---------欢迎进入游戏世界---------\n");
		System.out.println("\t*************\n\t** 猜拳，开始 **\n\t*************\n");
		System.out.println("出拳规则：1.剪刀 2.石头 3.布\n积分规则：胜利加1分，平局或失败0分\n");

	}

	/**
	 * 显示游戏结果
	 */
	public void resultGame() {
		System.out.println("\n-------------------------");
		System.out.println("(电脑)" + computer.cname + " VS " + "(用户)" + User.uname);
		System.out.println("对战次数：" + count + "次," + computer.cname + "（电脑）:" + computer.cscore + "分," + User.uname
				+ "（用户）" + user.uscore+"分。");
		if (computer.cscore > user.uscore) {
			System.out.println(computer.cname + "（电脑）赢了。");
		} else if(computer.cscore < user.uscore){
			System.out.println(User.uname + "（用户）赢了。");
		}else{
			System.out.println("势均力敌，不分胜负。");
		}
	}

}
