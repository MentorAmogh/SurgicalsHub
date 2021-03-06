package com.group.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.group.DAO.CategoryDAO;
import com.group.DAO.DeleteCategoryDAO;
import com.group.model.Category;
import com.group.model.deletecategory;

public class deleteController {

	@Autowired
	DeleteCategoryDAO catdao;
	
	@RequestMapping(value = "/deletecategory", method = RequestMethod.GET)
	public ModelAndView showCategor()
	{
		ModelAndView mv=new ModelAndView("deletecategory","deletecategory",new deletecategory());
		System.out.println("In Get delete");
		return mv;
	}
	
	@RequestMapping(value = "/deletecategory", method = RequestMethod.POST)
	public String getCategory(deletecategory category) 
	{
		System.out.println("IN Post");
		System.out.println(category.getRcatid());
		catdao.deleteCategoryId(category);
		return "admin";
	}
}
