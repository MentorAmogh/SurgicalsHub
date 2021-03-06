package com.group.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.group.DAO.supplierDAO;

import com.group.model.Supplier;

@Controller
public class supplierController {
	
		  @Autowired
			
		supplierDAO suppDAO;
		
		@RequestMapping(value = "/supplier", method = RequestMethod.GET)
		public ModelAndView showSupplierr()
		{
			String mydata=suppDAO.displayALL();
			ModelAndView mv=new ModelAndView("supplier","supplier",new Supplier());
			mv.addObject("suppdata", mydata);
			return mv;
		}
		@RequestMapping(value = "/addsupplier", method = RequestMethod.POST)
		//previous category has this method as getCategory here we have schanged it to addsupplier
		public ModelAndView addSupplier(Supplier suppins) 
		{
			suppDAO.addSupplier(suppins);
			String mydata=suppDAO.displayALL();
			ModelAndView mv=new ModelAndView("supplier","supplier",new Supplier());
			mv.addObject("suppdata",mydata);
			return mv;
		}
		@RequestMapping(value = "/deleteSupp", method = RequestMethod.GET)
		public ModelAndView deleteSupplier(@RequestParam("id") String suppid)
		{
			String mydata=suppDAO.displayALL();
			suppDAO.deleteSupplier(suppid);
			ModelAndView mv=new ModelAndView("supplier","supplier",new Supplier());
			mv.addObject("suppdata",mydata);
			return mv;
		}

		//function for updating data
		@RequestMapping(value = "/updateSupp", method = RequestMethod.POST)
		public ModelAndView updateSupplier(Supplier upcat)
		{
			suppDAO.updateSupplier(upcat);
		boolean data=true;
			ModelAndView mv=new ModelAndView("supplier","supplier",new Supplier());
			String catJSonList=suppDAO.displayALL();
			mv.addObject("suppdata",catJSonList);
			mv.addObject("check",data);
			return mv;
		}

		@RequestMapping(value = "/updateSupp", method = RequestMethod.GET)
		public ModelAndView updateSupplier(@RequestParam("id") String sid)
		{
			Supplier supp=suppDAO.displayRecord(sid);
			ModelAndView mv=new ModelAndView("supplier","supplier",supp);
			mv.addObject("check",false);
			return mv;
		}

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
}
