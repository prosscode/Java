package service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entity.User;
import mapper.UserMapper;
import service.UserService;

/**
 * @author maXpross
 *
 * Create 2018年2月24日
 *
 * Content service层  User接口实现类  自动注解
 */
@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserMapper mapper;
	
	@Override
	public User login(String username,String password) {
		return mapper.login(new User(username,password));
	}
	
	@Override
	public int register(String username, String password, String email, String telephone) {
		return mapper.register(new User(username,password,email,telephone));
	}

	@Override
	public boolean selectUser(String username) {
		boolean flag;
		if(mapper.selectUser(username)!=null) {
			flag=false;
		}else {
			flag=true;
		}
		return flag; 
	}

}
