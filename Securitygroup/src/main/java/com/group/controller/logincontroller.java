package com.group.controller;

import java.util.Collection;
import java.util.List;

import javax.naming.Context;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.group.DAO.UserDetailsDAO;
import com.group.DAO.productsDAO;
import com.group.model.Category;
import com.group.model.Login;
import com.group.model.Products;
import com.group.model.Register;
import com.group.model.UserDetails;


@Controller
public class logincontroller {
	@RequestMapping("/contact")
	public String showContact()
	{
		return "contactus";
	}

	@RequestMapping("/about")
	public String showAbout()
	{
		return "about";
	}
	@RequestMapping("/CommonHeader")
	public String showHeader()
	{
		return "CommonHeader";
	}
	/*
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView showlogin() {
		 return new ModelAndView("login", "login", new Login());
	}
	*/
	/*
	  @RequestMapping(value = "/register", method = RequestMethod.GET)
	   public ModelAndView showregister() {
	      return new ModelAndView("register", "Register", new Register());
	  }
	  */
	  @RequestMapping(value = "/register",method=RequestMethod.GET)
	   public String showregister() {
	      return "UserDetails";
	  }

	@Autowired
		productsDAO pdao;
		@RequestMapping("/products")
		public ModelAndView showProducts(Products pobj)
		{
			Gson  gsonstring =new Gson();
			String robj=pdao.display();
			String prodlist=gsonstring.toJson(pobj);
			ModelAndView mv=new ModelAndView("products","products",new Products());
		
			mv.addObject("proddata", prodlist);
			return mv;
		//	System.out.println(robj);
			//return new ModelAndView("products","rob",robj);
		}
		
		@RequestMapping("/admin")
		public String showAdmin()
		{
			return "admin";
		}
		UserDetailsDAO logindao;
		@SuppressWarnings("unchecked")
		@RequestMapping(value = "/login_session_attributes")
		public String login_session_attributes(HttpSession session,Model model) {
			String userid = SecurityContextHolder.getContext().getAuthentication().getName();
				Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext()	.getAuthentication().getAuthorities();
			String page="";
			String role="ROLE_USER";
			for (GrantedAuthority authority : authorities) 
			{
			  
			     if (authority.getAuthority().equalsIgnoreCase(role)) 
			     {
			    	 session.setAttribute("UserLoggedIn", userid);
			    	 session.setAttribute("Status", "true");
				    	
			    	 // page="/addToCart";
			    	 page="/displayProducts";
			    	// session.setAttribute("cartsize",cartDAO.cartsize((int)session.getAttribute("userId")));
			     }
			     else 
			     {
			    	 session.setAttribute("FirstTime","returnTrip");
			    	 session.setAttribute("UserLoggedIn", userid);
			    	 page="/admin";
			    }
			     
			}
			return page;
		}

		@RequestMapping("/login")
		public String showlogin() {
			 return "login";
		}
		@RequestMapping(value="/performLogout")
		public String logoutSuccess() {
			
			
			return "/Logout";
		}

		@RequestMapping(value="/loginSuccess",method=RequestMethod.POST)
		public String showSuccess() {
			 return "Admin";
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
