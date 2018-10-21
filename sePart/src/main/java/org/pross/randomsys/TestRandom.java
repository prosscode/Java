/**
 * 
 */
package org.pross.randomsys;

import java.util.Scanner;

/**
 * @author maXpross
 *
 *         Date:2017年12月12日
 *
 *         Content: 随机系统入口
 *
 *         Analysis:
 */
public class TestRandom {
	public static void main(String[] args) {
		
		RandomUtils ru = new RandomUtils();
		boolean flag = true;
		while (flag) {
			System.out.print("===欢迎进入不重复随机系统===\n"
					+ "1.数组存储方式 \n2.集合和IO流方式\n3.退出系统\n---\n请选择随机产生的方式：");
			Scanner input = new Scanner(System.in);
			int choose = input.nextInt();
			switch (choose) {
			case 1:
				ru.CompareArray();
				break;
			case 2:
				ru.SetAndIO();
				break;
			case 3:
				System.out.println("欢迎下次使用！");
				flag=false;
				break;
			default:
				
			}
		}
	}
}
