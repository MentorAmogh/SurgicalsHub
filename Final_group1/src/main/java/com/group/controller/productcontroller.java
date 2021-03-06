package com.group.controller;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.group.DAO.CategoryDAO;
import com.group.DAO.productsDAO;
import com.group.DAO.supplierDAO;
import com.group.model.Category;
import com.group.model.Products;

@Controller
public class productcontroller {
	 @Autowired
		productsDAO prodDAO;
	 @Autowired
	 	CategoryDAO catDAO;
	 @Autowired
	 	supplierDAO suppDAO;
	 
		@RequestMapping(value = "/dispproducts", method = RequestMethod.GET)
		public String dispProducts()
		{
			return "displayProducts";
		}
		@RequestMapping(value = "/disproducts", method = RequestMethod.GET)
		public ModelAndView showAllProducts()
		{
			boolean check=false;
			String suppids=suppDAO.displayALL();
			String catids=catDAO.displayCatId();
			List proddata=prodDAO.display();//changed to list
			ModelAndView mv=new ModelAndView("products","products",new Products());
			mv.addObject("suppidretrieved",suppids);
			mv.addObject("catidretrieved",catids);
			mv.addObject("proddata",proddata);
			mv.addObject("check",true);
			return mv;
		}
	
		@RequestMapping(value = "/disproducts", method = RequestMethod.POST)
		public ModelAndView showProducts()
		{
			boolean check=false;
			String suppids=suppDAO.displayALL();
			String catids=catDAO.displayCatId();
			List proddata=prodDAO.display();//changed to list
			ModelAndView mv=new ModelAndView("products","products",new Products());
			mv.addObject("suppidretrieved",suppids);
			mv.addObject("catidretrieved",catids);
			mv.addObject("proddata",proddata);
			mv.addObject("check",true);
			return mv;
		}
		//Adding product data
		@RequestMapping(value = "/addproducts", method = RequestMethod.POST)
		public  ModelAndView addProduct(@ModelAttribute("prdt")Products newproduct, HttpServletRequest request,RedirectAttributes attributes) 
		{
			prodDAO.addProducts(newproduct);
			String path="D:\\mars2.0\\group\\src\\main\\webapp\\resources\\images\\";
			path=path+String.valueOf(newproduct.getProdid())+".jpg";
			File f=new File(path);
		
			MultipartFile filedet=newproduct.getPimage();
			
			if(!filedet.isEmpty())
			{
				try
				{
				  byte[] bytes=filedet.getBytes();
				  System.out.println(bytes.length);
				  FileOutputStream fos=new FileOutputStream(f);
	              			BufferedOutputStream bs=new BufferedOutputStream(fos);
	              			bs.write(bytes);
	              			bs.close();	
	             			 System.out.println("File Uploaded Successfully");
				}
				catch(Exception e)
				{
					System.out.println("Exception Arised"+e);
				}
			}
			else
			{
				System.out.println("File is Empty not Uploaded");
				
			}
			
			
			boolean check=false;
			String suppids=suppDAO.displayALL();
			String catids=catDAO.displayCatId();
			List proddata=prodDAO.display();//changed to list
			ModelAndView mv=new ModelAndView("products","products",new Products());
			mv.addObject  ("suppidretrieved",suppids);
			mv.addObject("catidretrieved",catids);
			mv.addObject("proddata",proddata);
			mv.addObject("check",true);
			return mv;
		}
/*
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
*/
}