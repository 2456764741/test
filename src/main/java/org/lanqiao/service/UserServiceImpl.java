package org.lanqiao.service;

import java.util.List;

import org.lanqiao.dao.UserDao;
import org.lanqiao.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDao userDao;
	@Override
	public List<User> getAllUser() {
		return userDao.getAllUser();
	}

	@Override
	public int insert(User user) {
		return userDao.insert(user);
	}

	@Override
	public int checkusername(String username) {
		if(userDao.checkusername(username) == null){
			return 0;
		}
		else {
			return 1;
		}
	}

}
