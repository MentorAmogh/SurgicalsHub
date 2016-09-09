package com.group.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.group.DAO.CategoryDAO;
import com.group.model.Category;
@Controller
public class CategoryController {

	@Autowired
	CategoryDAO catdao;
	
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public ModelAndView showCategor()
	{
		ModelAndView mv=new ModelAndView("category","category",new Category());
		System.out.println("In Get");
		return mv;
	}
	
	@RequestMapping(value = "/showcategory", method = RequestMethod.POST)
	public String getCategory(Category category) 
	{
		System.out.println("IN Post");
		System.out.println(category.getRcatid());
		System.out.println(category.getRcatname());
		catdao.addCategory(category);
		
		return "admin";
	}

}
