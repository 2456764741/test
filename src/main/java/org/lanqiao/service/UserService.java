package org.lanqiao.service;

import java.util.List;

import org.lanqiao.entity.User;

public interface UserService {
	public List<User> getAllUser();
	public int insert(User user);
	public int checkusername(String username);
}
