package com.group.DAO;
import java.util.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

}
