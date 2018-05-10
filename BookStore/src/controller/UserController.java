package controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.User;
import service.UserService;

/**
 * @author maXpross
 *
 *         Create 2018年2月24日
 *
 *         Content 后端控制器 user
 */
@Controller
public class UserController {

	@Autowired
	UserService userService;
	/**
	 * 登录功能
	 * 
	 * @param username
	 * @param password
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("/login")
	public String login(String username, String password, Model model, HttpServletRequest request) {
//		System.out.println("进入了登录功能");
		String str = "";
		User user = userService.login(username, password);
		if (user == null) {
			str = "login";
			model.addAttribute("msg", "账号或密码错误");
		} else {
			// 登录成功跳转到主页
			/* System.out.println(username); */
			//利用session记住用户名，方便判断是否登录
			request.getSession().setAttribute("user", username);
			str = "index";
		}
		return str;
	}

	/**
	 * 注册功能
	 * 
	 * @param username
	 * @param password
	 * @param email
	 * @param telephone
	 * @param model
	 * @return
	 */
	@RequestMapping("/register")
	public String register(String username, String password, String email, String telephone, Model model) {
//		System.out.println("进入了注册功能");
		String str = "";
		boolean flag =userService.selectUser(username);
		if (flag) {
			if (email == "" || username == "" || password == "" || telephone == "") {
				str = "register";
				model.addAttribute("msg", "请把信息填写完整");
			} else {
				int count = userService.register(username, password, email, telephone);
				if (count == 1) {
					str = "registersuccess";
				} else {
					str = "register";
					model.addAttribute("msg", "未知原因,注册失败。请与管理员联系。");
				}
			}
		} else {
			str = "register";
			model.addAttribute("msg", "该用户名已被注册");
		}
		
		return str;
	}
	
	/**
	 * 登出，移除session中的用户
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/removeUser")
	public String removeUser(HttpServletRequest request) {
		String str="";
		request.getSession().removeAttribute("user");	
//		Cookie NewCookie=new Cookie("bookId",null);
//		NewCookie.setMaxAge(0);
		str="index";
		return str;
		
	}

}
