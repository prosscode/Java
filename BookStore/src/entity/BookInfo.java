package entity;

/**
 * @author maXpross
 *
 * Create 2018年4月6日
 *
 * Content BookInfo实体类
 */
public class BookInfo {
	
	private int bookId;
	private String bookName;
	private double bookPrice;
	private double bookPriceold;
	private String bookAuthor;
	private String bookPublish;
	private String bookInfo;
	private String bookURLS;
	private String bookURLL;
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public double getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(double bookPrice) {
		this.bookPrice = bookPrice;
	}
	public double getBookPriceold() {
		return bookPriceold;
	}
	public void setBookPriceold(double bookPriceold) {
		this.bookPriceold = bookPriceold;
	}
	public String getBookAuthor() {
		return bookAuthor;
	}
	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}
	public String getBookPublish() {
		return bookPublish;
	}
	public void setBookPublish(String bookPublish) {
		this.bookPublish = bookPublish;
	}
	public String getBookInfo() {
		return bookInfo;
	}
	public void setBookInfo(String bookInfo) {
		this.bookInfo = bookInfo;
	}
	public String getBookURLS() {
		return bookURLS;
	}
	public void setBookURLS(String bookURLS) {
		this.bookURLS = bookURLS;
	}
	public String getBookURLL() {
		return bookURLL;
	}
	public void setBookURLL(String bookURLL) {
		this.bookURLL = bookURLL;
	}
	
	public BookInfo() {
		super();
	}
	public BookInfo(int bookId, String bookName, double bookPrice, double bookPriceold, String bookAuthor,
			String bookPublish, String bookInfo, String bookURLS, String bookURLL) {
		super();
		this.bookId = bookId;
		this.bookName = bookName;
		this.bookPrice = bookPrice;
		this.bookPriceold = bookPriceold;
		this.bookAuthor = bookAuthor;
		this.bookPublish = bookPublish;
		this.bookInfo = bookInfo;
		this.bookURLS = bookURLS;
		this.bookURLL = bookURLL;
	}
	@Override
	public String toString() {
		return "BookInfo [bookId=" + bookId + ", bookName=" + bookName + ", bookPrice=" + bookPrice + ", bookPriceold="
				+ bookPriceold + ", bookAuthor=" + bookAuthor + ", bookPublish=" + bookPublish + ", bookInfo="
				+ bookInfo + ", bookURLS=" + bookURLS + ", bookURLL=" + bookURLL + "]";
	}

}
