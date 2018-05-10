package service;

import entity.User;

/**
 * @author maXpross
 *
 * Create 2018年2月24日
 *
 * Content User接口 service层
 */
public interface UserService {
	/**
	 * 用户登录
	 * @param user
	 * @return
	 */
	User login(String username,String password);
	
	
	/**
	 * 查询用户是否存在 
	 * @param username
	 * @return
	 */
	boolean selectUser(String username);
	
	/**
	 * 用户注册
	 * @param username
	 * @param password
	 * @param email
	 * @param telephone
	 * @return
	 */
	int register(String username,String password,String email,String telephone);
}
