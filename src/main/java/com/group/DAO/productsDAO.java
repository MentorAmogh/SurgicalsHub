package com.group.DAO;
import java.util.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.group.model.*;

@Repository
public class productsDAO 
{
	@Autowired
	 SessionFactory	sessionFactory;
List<Products> pobj;

public String display()
{
	Session con=sessionFactory.openSession();
	con.beginTransaction();
	List li=con.createQuery(" from Products").list();
		Gson gobj=new Gson();
		String proddata=gobj.toJson(li);
	con.getTransaction().commit();
	con.close();
	return proddata;
}


public void addProducts(Products prodcat)
{
	
	Session con=sessionFactory.openSession();
	con.beginTransaction();
	con.save(prodcat);
	con.getTransaction().commit();
	con.close();
	
}
public void deleteProduct(@RequestParam("id") String pid)
{
	System.out.println("in cat dao with pid="+pid);
	Session con=sessionFactory.openSession();
	con.beginTransaction();
	Products proddel = (Products)con.get(Products.class, pid); 
    con.delete(proddel); 
    con.getTransaction().commit();
	}
public void updateProduct(Products pobj)
{
	Session con=sessionFactory.openSession();
	con.beginTransaction();
	String prodid=pobj.getProdid();
	Products prodsupdated = (Products)con.get(Products.class, prodid); 
	pobj.setProddesc(prodsupdated.getProddesc());
	pobj.setProdname(prodsupdated.getProdname());
	con.update(pobj);
	con.getTransaction().commit();
	con.close();
}

}
