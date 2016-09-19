package com.group.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.group.DAO.AddToCartDAO;
import com.group.model.Category;
import com.group.model.Products;
import com.group.model.addtocart;


@Controller
public class CartController {
	  @Autowired
	AddToCartDAO atc;
	@RequestMapping(value = "/addtocart", method = RequestMethod.GET)
	public ModelAndView addtoCart(@RequestParam("prodid") String cartid)
	{

		//String mydata=atc.displayCartProd(cartid);
		ModelAndView mv=new ModelAndView("AddToCart","addtocart",new addtocart());
		String catJSonList=atc.displayRecord(cartid);
		mv.addObject("cartdata",catJSonList);
	//	mv.addObject("cartdata",mydata);
		return mv;
	}
	
	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public String Cart()
	{

		//String mydata=atc.displayCartProd(cartid);
		//ModelAndView mv=new ModelAndView("AddToCart","addtocart",new addtocart());
	//	String catJSonList=atc.displayRecord(cartid);
		//mv.addObject("cartdata",catJSonList);
	//	mv.addObject("cartdata",mydata);
		return "checkout";
	}
	
}
