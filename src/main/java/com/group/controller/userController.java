package com.group.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.group.DAO.CategoryDAO;
import com.group.DAO.UserDetailsDAO;
import com.group.model.Category;
import com.group.model.UserDetails;

@Controller
public class userController {
	  @Autowired
		UserDetailsDAO userdao;
		@RequestMapping(value = "/addUser", method = RequestMethod.POST)
		public ModelAndView getUser(UserDetails newuser) 
		{
			userdao.addUsers(newuser);
			String mydata=userdao.displayUsers();
			ModelAndView mv=new ModelAndView("UserDetails","UserDetails",new UserDetails());
			mv.addObject("userdata",mydata);
			return mv;
		}

}
