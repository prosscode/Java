package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entity.BookInfo;
import entity.CartItem;
import mapper.BookMapper;
import service.BookService;

@Service
public class BookServerImpl implements BookService {
	
	@Autowired
	BookMapper book;
	
	@Override
	public List<BookInfo> getAllBook(int bookId) {
		List<BookInfo> bookInfo = book.getAllBookInfo(bookId);
		return bookInfo;
	}

	@Override
	public CartItem getBuyBookInfo(int bookId) {
		CartItem buyBookInfo=book.getBuyBookInfo(bookId);
		return buyBookInfo;
	}
	

}
