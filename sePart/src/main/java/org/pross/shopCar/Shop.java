package org.pross.shopCar;

/**
 * @author maXpross
 *
 *         Create 2018年1月2日
 *
 *         Content 商品
 */
public class Shop {
	// 商品的编号、名称、价格、数量
	private int sno;
	private String name;
	private double price;
	private int count;

	// set get 构造器
	public int getSno() {
		return sno;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
	
	//构造函数
	public Shop(int sno, String name, double price, int count) {
		super();
		this.sno = sno;
		this.name = name;
		this.price = price;
		this.count = count;
	}
	
	public Shop() {
		super();
	}

	@Override
	public String toString() {
		return "商品编号\t名称\t价格\t数量";
	}

}
