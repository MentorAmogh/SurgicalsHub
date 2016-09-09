package com.group.DAO;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.group.model.Category;


@Repository
public class CategoryDAO 
{

	@Autowired
 SessionFactory	sessionFactory;
public void addCategory(Category cat)
{
	Session con=sessionFactory.openSession();
	con.beginTransaction();
	con.save(cat);
	con.getTransaction().commit();
	con.close();
	
	
}
}
