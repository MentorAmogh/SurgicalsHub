package com.group.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.group.DAO.CategoryDAO;
import com.group.DAO.productsDAO;
import com.group.model.Category;
import com.group.model.Products;

@Controller
public class productcontroller {
	 @Autowired
		productsDAO prodDAO;
	 @Autowired
	 	CategoryDAO catDAO;
		@RequestMapping(value = "/products", method = RequestMethod.GET)
		public ModelAndView showProducts()
		{
			String catids=catDAO.displayCatId();
			String proddata=prodDAO.display();
			ModelAndView mv=new ModelAndView("products","products",new Products());
			mv.addObject("catidretrieved",catids);
			mv.addObject("proddata",proddata);
			return mv;
		}
	

//Adding product data
@RequestMapping(value = "/addproducts", method = RequestMethod.POST)
public ModelAndView getCategory(Products newproduct) 
{
	prodDAO.addCategory(newproduct);
	String mydata=prodDAO.display();
	ModelAndView mv=new ModelAndView("products","products",new Products());
	mv.addObject("proddata",mydata);
	return mv;
}
}