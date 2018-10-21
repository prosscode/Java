package org.pross.guessFist;

import java.util.Scanner;

/**
 * @author maXpross
 *
 * @create 2017年12月20日
 *
 * Content 用户类
 */
public class User {
	Scanner input=new Scanner(System.in);
	static String uname;
	int uscore;
	
	/**
	 * 用户选择角色
	 */
	public void userSelectRole(){
		System.out.print("请为自己选择角色（1.吸血鬼 2.狼人 3.变形金刚）：");
		int num=input.nextInt();
		switch(num){
		case 1:
			User.uname="吸血鬼";
			break;
		case 2:
			User.uname="狼人";
			break;
		case 3:
			User.uname="变形金刚";
			break;
		}
		System.out.println("我选择的角色是："+uname+"\n");
	}
	
	/**
	 * 用户出拳功能
	 */
	public int userSelectFist(){
		System.out.print("请出拳：1.剪刀 2.石头 3.布 (输入相应数字)：");
		int num=input.nextInt();
		switch(num){
		case 1:
			System.out.println("你出拳：剪刀");
			break;
		case 2:
			System.out.println("你出拳：石头");
			break;
		case 3:
			System.out.println("你出拳：布");
			break;
		}
		return num;
	}
}
