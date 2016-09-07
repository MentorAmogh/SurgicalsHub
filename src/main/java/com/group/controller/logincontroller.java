package com.group.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.group.DAO.productsDAO;
import com.group.model.Login;
import com.group.model.Products;
import com.group.model.Register;

@Controller
public class logincontroller {

	
	@RequestMapping("/about")
	public String showAbout()
	{
		System.out.println("AboutUs");
		return "about";
	}
	@RequestMapping("/CommonHeader")
	public String showHeader()
	{
		return "CommonHeader";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView showlogin() {
		 return new ModelAndView("login", "login", new Login());
	}
	
	  @RequestMapping(value = "/register", method = RequestMethod.GET)
	   public ModelAndView showregister() {
	      return new ModelAndView("register", "Register", new Register());
	  }
	/*
	@Autowired
	productsDAO pdao;
	@RequestMapping("/products")
	public ModelAndView showProducts()
	{
		Gson  gsonstring =new Gson();
		List<Products> robj=pdao.display();
	//	System.out.println(robj);
		return new ModelAndView("products","rob",robj);
	}
	
	  @Autowired
		productsDAO pdao;
		@RequestMapping("/products")
		public String showProducts(Model M)
		{
			Gson  gsonstring =new Gson();
			List<Products> robj=pdao.display();
			String prodlist=gsonstring.toJson(robj);
			M.addAttribute("proddata", prodlist);
			return "products";
		//	System.out.println(robj);
			//return new ModelAndView("products","rob",robj);
		}
	
	*/
}
