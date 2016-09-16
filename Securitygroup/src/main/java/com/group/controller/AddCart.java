package com.group.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.group.model.addtocart;


@Controller
public class AddCart {
	@RequestMapping(value = "/addtocart", method = RequestMethod.GET)
	public ModelAndView addCart(@RequestParam("prodid") String prodid)
	{
		
		ModelAndView mv=new ModelAndView("addtocart","addcart",new addtocart());
		mv.addObject("cartdata",prodid);
		return mv;
	}

}
