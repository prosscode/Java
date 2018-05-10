package mapper;

import java.util.List;

import entity.Book;
import entity.BookInfo;
import entity.CartItem;

/**
 * @author maXpross
 *
 * Create 2018年2月24日
 *
 * Content 
 */
public interface BookMapper {
	
	/**
	 * 查询所有的商品信息
	 * 
	 * @return
	 */
	public List<BookInfo> getAllBookInfo(int bookId);
	
	/**
	 * 查询已经够买的商品信息
	 * 
	 * @param bookId
	 * @return
	 */
	
	public CartItem getBuyBookInfo(int bookId);
	
	/**
	 * 分页商品查询
	 * 
	 * @param id
	 * @param start
	 * @param limit
	 * @return
	 */
	public List<Book> getBookByLimit(int id,int start,int limit);
	
	
}
