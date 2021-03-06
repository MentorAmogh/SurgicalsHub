package com.group.controller;


import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
		String mydata=catdao.display();
		ModelAndView mv=new ModelAndView("category","category",new Category());
		mv.addObject("catdata",mydata);
		return mv;
	}
	//method to add data to the data
		@RequestMapping(value = "/showcategory", method = RequestMethod.POST)
		public ModelAndView getCategory(Category category) 
		{
			catdao.addCategory(category);
			String mydata=catdao.display();
			ModelAndView mv=new ModelAndView("category","category",new Category());
			mv.addObject("catdata",mydata);
			return mv;
		}

	
	
	
	
	
	//Delete the categories
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public ModelAndView deleteCategor(@RequestParam("id") String cid)
	{
System.out.println("In delete Category with"+cid);	

	String mydata=catdao.display();
	catdao.deleteCategory(cid);
		ModelAndView mv=new ModelAndView("category","category",new Category());
		System.out.println("In Get");
		mv.addObject("catdata",mydata);
		
		return mv;
	}
	
	
	
	
	
	//function for updating data
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView updateCommit(Category upcat)
	{
	catdao.updateCategory(upcat);
	boolean data=true;
		ModelAndView mv=new ModelAndView("category","category",new Category());
		String catJSonList=catdao.display();
		mv.addObject("catdata",catJSonList);
		mv.addObject("check",data);
		return mv;
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView updateCategor(@RequestParam("id") String cid)
	{
		Category cat=catdao.displayRecord(cid);
		ModelAndView mv=new ModelAndView("category","category",cat);
		mv.addObject("check",false);
		return mv;
	}
	
}
