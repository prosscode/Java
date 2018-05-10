package service;

import java.util.List;

import entity.BookInfo;
import entity.CartItem;

/**
 * @author maXpross
 *
 * Create 2018年2月24日
 *
 * Content 
 */
public interface BookService {
	/**
	 * 查询所有书籍信息，details显示调用
	 * @return
	 */
	List<BookInfo> getAllBook(int bookId);
	
	/**
	 * 添加到购物车的商品信息
	 * @param bookId
	 * @return
	 */
	CartItem getBuyBookInfo(int bookId);

}
