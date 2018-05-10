package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.CartItem;
import service.BookService;

/**
 * 
 * @author maXpross
 *
 * Create 2018年4月7日
 *
 * Content 购物车操作
 */
@Controller
public class CartController {
	
	List<CartItem> list=new ArrayList<CartItem>();
	
	@Autowired
	BookService bookService;

	
	/**
	 * 添加购物车
	 * 
	 * @param bookId
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/addCart")
	public String addCart(String bookId, HttpServletRequest request,HttpServletResponse response){
//		System.out.println("添加购物车功能");
		/*
		 * 添加购物车之前先判断用户是否登录
		 */
		HttpSession session=request.getSession(false);
		if(session==null) {
			//没有session，跳转到登录页面
			return "login";
		}
		//取出session数据
		String userName=(String) session.getAttribute("user");
		if(userName==null) {
			//session中没有username信息，跳转到登录页面
			return "login";
		}else {
			/*
			 * 存在用户登录，可以添加到cookie购物车中
			 * 创建cookie对象
			 */
			Cookie cookie=new Cookie("bookId",bookId);
//			cookie.setMaxAge(60*60*24);
			response.addCookie(cookie);
			return "redirect:/select2Cart";
		}
	}
	
	/**
	 * 获取cookie，查询数据库，获得书籍信息，返回到Cart页面显示
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/select2Cart")
	public String select2Cart(Model model,HttpServletRequest request,HttpServletResponse response) {
//		System.out.println("select2Cart");
		//获取cookie
		Cookie[] cookies=request.getCookies();
		/*
		 * 遍历cookie中的bookid
		 * 根据bookId取出相应的对象信息，放入CartItem对象中
		 */
		for(Cookie cookie:cookies) {
			if(cookie.getName().equals("bookId")) {
				int bookId = Integer.parseInt(cookie.getValue());
				CartItem buyBookInfo = bookService.getBuyBookInfo(bookId);
//				System.out.println(buyBookInfo.getBookURLS());
				CartItem item=new CartItem(buyBookInfo.getBookName(),buyBookInfo.getBookPrice(),buyBookInfo.getBookURLS());
				list.add(item);
			}
		}
		model.addAttribute("buyBookInfo",list);
		return "cart";
		
	}
	
}
