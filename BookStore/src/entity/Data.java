package entity;

/**
 * 
 * @author maXpross
 *
 * Create 2018年5月8日
 *
 * Content
 * 		list.add(orderNum);
		list.add(orderSale);
		list.add(userNum);
		list.add(bookNum);
 */
public class Data {
	
	private int orderNum;
	private double orderSale;
	private int userNum;
	private int bookNum;
	
	public Data() {
		super();
	}
	public Data(int orderNum, double orderSale, int userNum, int bookNum) {
		super();
		this.orderNum = orderNum;
		this.orderSale = orderSale;
		this.userNum = userNum;
		this.bookNum = bookNum;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public double getOrderSale() {
		return orderSale;
	}
	public void setOrderSale(double orderSale) {
		this.orderSale = orderSale;
	}
	public int getUserNum() {
		return userNum;
	}
	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}
	public int getBookNum() {
		return bookNum;
	}
	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}
	
	

}
