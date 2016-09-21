package com.group.DAO;
import java.util.List;



import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.group.model.Category;



@Repository
public class CategoryDAO 
{
	@Autowired
	 SessionFactory	sessionFactory;
	//List<Category> pobj;
	public 	String displayCatId()
	{
		Session con=sessionFactory.openSession();
		con.beginTransaction();
		List id_li=con.createQuery(" from Category").list();
			Gson gobj=new Gson();
			String catids=gobj.toJson(id_li);
		con.getTransaction().commit();
		con.close();
		return catids;
	}
	public String display()
	{
		Session con=sessionFactory.openSession();
		con.beginTransaction();
		List li=con.createQuery(" from Category").list();
			Gson gobj=new Gson();
			String data=gobj.toJson(li);
			System.out.println(data);
		con.getTransaction().commit();
		con.close();
		return data;
	}
	public Category displayRecord(String catid)
	{
		Session con=sessionFactory.openSession();
		con.beginTransaction();
		Category cate=(Category)con.get(Category.class,catid);
		return cate;
	}
	public void deleteCategory(@RequestParam("id") String cid)
	{
		System.out.println("in cat dao with cid="+cid);
		try
		{
		Session con=sessionFactory.openSession();
		con.beginTransaction();
		Category employee = (Category)con.get(Category.class, cid); 
        con.delete(employee); 
        con.getTransaction().commit();
   
		}
		catch(HibernateException e)
		{
		//	System.out.println("Error"+oo.toString());
		}
		
       
	}
	public void updateCategory(Category cobj)
	{
		Session con=sessionFactory.openSession();
		con.beginTransaction();
		String catid=cobj.getRcatid();
		Category employee = (Category)con.get(Category.class, catid); 
		employee.setRcatname(cobj.getRcatname());
		employee.setRcatdesc(cobj.getRcatdesc());
		con.update(employee);
		con.getTransaction().commit();
		con.close();
	}

	public void addCategory(Category cat)
{
	
	Session con=sessionFactory.openSession();
	con.beginTransaction();
	con.save(cat);
	con.getTransaction().commit();
	con.close();
	
}
}
