package com.group.DAO;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transaction;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.group.model.Category;
import com.group.model.Supplier;
@Repository
public class supplierDAO {

	@Autowired
	 SessionFactory	sessionFactory;
	public String displayALL()
	{
		
		Session con=sessionFactory.openSession();
		con.beginTransaction();
		List li=con.createQuery(" from Supplier").list();
			Gson gobj=new Gson();
			String data=gobj.toJson(li);
			System.out.println(data);
		con.getTransaction().commit();
		con.close();
		return data;
	}
	public void addSupplier(Supplier addsupp)
{
	
	Session con=sessionFactory.openSession();
	con.beginTransaction();
	con.save(addsupp);
	con.getTransaction().commit();
	con.close();
	
}
	public void deleteSupplier(@RequestParam("id") String sid)
	{
		System.out.println("in cat dao with cid="+sid);
		Session con=sessionFactory.openSession();
		con.beginTransaction();
		Supplier supp = (Supplier)con.get(Supplier.class, sid); 
        con.delete(supp); 
        con.getTransaction().commit();
   	}
	public void updateSupplier(Supplier sobj)
	{
		Session con=sessionFactory.openSession();
		con.beginTransaction();
		String suppid=sobj.getSuppid();
		Supplier supplr = (Supplier)con.get(Supplier.class, suppid); 
		supplr.setSuppaddr(sobj.getSuppaddr());
		supplr.setSuppemail(sobj.getSuppemail());
		con.update(supplr);
		con.getTransaction().commit();
		con.close();
	}
	
	public Supplier displayRecord(String suppid)
	{
		Session con=sessionFactory.openSession();
		con.beginTransaction();
		Supplier cate=(Supplier)con.get(Supplier.class,suppid);
		return cate;
	}
	
	

}
