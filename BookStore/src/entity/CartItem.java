package entity;

/**
 * 
 * @author maXpross
 *
 * Create 2018年4月7日
 *
 * Content 购物车实体类
 */
public class CartItem {
	private String bookName;
	private String bookPrice;
	private String bookURLS;

	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(String bookPrice) {
		this.bookPrice = bookPrice;
	}
	public String getBookURLS() {
		return bookURLS;
	}
	public void setBookURLS(String bookURLS) {
		this.bookURLS = bookURLS;
	}
	public CartItem(String bookName, String bookPrice, String bookURLS) {
		super();
		this.bookName = bookName;
		this.bookPrice = bookPrice;
		this.bookURLS = bookURLS;
	}
	public CartItem() {
		super();
	}
	
	
}
