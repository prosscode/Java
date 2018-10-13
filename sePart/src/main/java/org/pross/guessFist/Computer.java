package com.pross.guessfist;

import java.util.Random;

/**
 * @author maXpross
 *
 * @create 2017年12月20日
 *
 *         Content 电脑类
 */
public class Computer {
	String cname;
	int cscore;

	/**
	 * 电脑选择角色，和用户的角色不重复
	 */
	public void computerSelectRole() {
		String[] name = { "吸血鬼", "狼人", "变形金刚" };
		Random r = new Random();
		int num;
		do {
			num = r.nextInt(3);
			cname = name[num];
		} while (name[num].equals(User.uname));

		System.out.println("计算机随机选择的角色是：" + this.cname + "\n");
	}

	/**
	 * 电脑随机出拳
	 */
	public int computerSelectFist() {
		String[] name = { "剪刀", "石头", "布" };
		// 范围在1-3之间
		int no = (int) (Math.random() * (3 - 1 + 1) + 1);
		System.out.println("电脑出拳：" + name[no - 1]);
		return no;
	}

}
