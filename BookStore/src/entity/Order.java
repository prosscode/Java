package entity;

/**
 * 
 * @author maXpross
 *
 * Create 2018年5月8日
 *
 * Content Order实体类
 */
public class Order {
	
	private int orderId;
	private double orderSale;
	
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public double getOrderSale() {
		return orderSale;
	}
	public void setOrderSale(double orderSale) {
		this.orderSale = orderSale;
	}
	public Order(int orderId, double orderSale) {
		super();
		this.orderId = orderId;
		this.orderSale = orderSale;
	}
	public Order() {
		super();
	}
	public Order(double orderSale) {
		super();
		this.orderSale = orderSale;
	}
	
	
}
