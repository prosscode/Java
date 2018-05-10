package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.BookInfo;
import service.BookService;

/**
 * @author maXpross
 *
 * Create 2018年2月24日
 *
 * Content 后端控制器 book
 */
@Controller
public class BookController {
	
	@Autowired
	BookService bookService;
	
	@RequestMapping("/details")
	public String getAllBook(int bookId,Model model){
//		System.out.println("进入查询book信息页面");
		String str="";
		List<BookInfo> book=bookService.getAllBook(bookId);
		if(book!=null) {
			model.addAttribute("bookInfo", book);
			str="details";
		}else {
			str="books";
		}
		return str;
	}
	
}
