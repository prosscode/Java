package org.pross.shopCar;

import java.util.Scanner;

/**
 * @author maXpross
 *
 *         Create 2018年1月2日
 *
 *         Content 方法类
 */
public class Util {
	Scanner input = new Scanner(System.in);

	/**
	 * 功能菜单显示
	 */
	public void menu() {
		System.out.println(
				"**************************菜单***************************\n" + "\t1.添加； 2.修改数量； 3.删除商品； 4.查询全部； 5.退出\n"
						+ "********************************************************");
		boolean flag = true;
		while (flag) {
			System.out.print("** 输入选择：");
			int choose = input.nextInt();
			switch (choose) {
			case 1:
				this.add();
				break;
			case 2:
				this.update();
				break;
			case 3:
				this.delete();
				break;
			case 4:
				this.showAllInfo();
				break;
			case 5:
				System.out.println("已退出系统，欢迎下次使用！");
				flag = false;
				break;
			}
		}
	}

	/**
	 * 添加商品信息
	 */
	private void add() {
		System.out.print("*输入编号：");
		int no = input.nextInt();
		System.out.print("输入名称：");
		String name = input.next();
		System.out.print("输入价格：");
		double price = input.nextDouble();
		System.out.print("输入数量：");
		int count = input.nextInt();
		Shop shop = new Shop(no, name, price, count);
		// 添加到list集合内
		if (ShopCar.list.add(shop)) {
			System.out.println("添加成功");
		} else {
			System.out.println("添加失败");
		}
	}

	/**
	 * 更新商品数量
	 */
	private void update() {
		System.out.print("输入要修改的编号：");
		int updateNo = input.nextInt();
		//查找是否存在该编号
		for (Shop shop : ShopCar.list) {
			if (shop.getSno() == updateNo) {
				System.out.print("输入新的数量：");
				int updateCount = input.nextInt();
				shop.setCount(updateCount);
				System.out.println("数量修改成功");
				break;
			}else {
				System.out.println("没有找到该编号的商品");
			}
		}
	}

	/**
	 * 删除商品
	 */
	private void delete() {
		System.out.print("输入要删除的编号：");
		int deleteNo = input.nextInt();
		for (Shop shop : ShopCar.list) {
			if (shop.getSno() == deleteNo) {
				ShopCar.list.remove(shop);
				System.out.println("删除成功");
				break;
			}else {
				System.out.println("找不到该编号的商品");
			}
		}
	}

	/**
	 * 显示所有商品
	 */
	private void showAllInfo() {
		if (ShopCar.list.isEmpty()) {
			System.out.println("没有商品");
		} else {
			ShopCar.list.forEach(System.out::println);
		}
	}

}
