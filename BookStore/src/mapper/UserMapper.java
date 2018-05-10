package mapper;

import entity.User;

/**
 * @author maXpross
 *
 * Create 2018年2月24日
 *
 * Content 用户方法功能接口
 */
public interface UserMapper {
	/**
	 * 用户登录
	 * @param user
	 * @return
	 */
	public User login(User user);
	
	/**
	 * 查询用户
	 */
	public User selectUser(String username);
	
	/**
	 * 用户注册
	 * @param user
	 * @return
	 */
	public int register(User user);
	
	
	
}
