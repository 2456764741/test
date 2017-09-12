package org.lanqiao.dao;

import java.util.List;

import org.lanqiao.entity.User;

public interface UserDao {
    int insert(User record);

    int insertSelective(User record);
    
    List<User> getAllUser();
    
    User checkusername(String username);
}