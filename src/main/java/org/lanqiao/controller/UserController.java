package org.lanqiao.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.lanqiao.entity.User;
import org.lanqiao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	
	@RequestMapping("index")
	public String register(){
		return "index";
	}
	
	@RequestMapping("addUser")
	public String addUser(){
		return "register";
	}
	
	@RequestMapping("getAllUser")
	public String getAllUser(User user,Model model,HttpSession session){
		List<User> userlist = userService.getAllUser();
		session.setAttribute("userList", userlist);
		return "forward:index";
	}
	
	@ResponseBody
	@RequestMapping("checkusername")
	public Object check(String username){
		return userService.checkusername(username);
	}
	
	@RequestMapping("insert")
	public String insert(User user){
		userService.insert(user);
		return "redirect:getAllUser";
	}
}
