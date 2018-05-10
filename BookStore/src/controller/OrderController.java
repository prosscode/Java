package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.Data;
import service.OrderService;

/**
 * 
 * @author maXpross
 *
 * Create 2018年5月8日
 *
 * Content 后端控制器 对Order的操作
 */
@Controller
public class OrderController {
	
	@Autowired
	OrderService orderService;

	/**
	 * 购物车结算按钮，生成订单并跳转到主页
	 * @param model
	 * @param sale
	 * @return
	 */
	@RequestMapping("/url2order")
	public String url2order(double sale,Model model) {
//		System.out.println("进入了订单生成功能");
		CartController cartController = new CartController();
		String str = "";
		int status = orderService.addOrderInfo(sale);
		if(status==1) {
//			Cookie NewCookie=new Cookie("bookId",null);
//			NewCookie.setMaxAge(0);
			str="ordersuccess";
		}
		return str;
	}
	
	/**
	 *	admin 数据分析
	 * @param model
	 * @return
	 */
	@RequestMapping("/getBookStoreData")
	public String getBookStoreData(Model model,HttpServletRequest request) {
		List<Data> list=new ArrayList<Data>();
//		System.out.println("进入订单数据分析功能");
		//得到订单的数量
		int orderNum = orderService.selectOrderNum();
		//得到所有订单的金额
		double orderSale = orderService.selectAllSale();
		//得到用户数量
		int userNum = orderService.getAllUser();
		//得到书籍数量
		int bookNum = orderService.getAllBook();
//		System.out.println(orderNum+","+orderSale+","+userNum+","+bookNum);
		Data data = new Data(orderNum,orderSale,userNum,bookNum);
		
		//把数据放入集合中
		list.add(data);
		//传值到前端
		//model.addAttribute("list",list);
		request.setAttribute("list",list);
		
		return "admin/index";
		
	}
	
}
