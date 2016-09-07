package com.group.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.google.gson.Gson;
import com.group.DAO.productsDAO;
import com.group.model.Products;

@Controller
public class productcontroller {
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
		}
	
	
}
