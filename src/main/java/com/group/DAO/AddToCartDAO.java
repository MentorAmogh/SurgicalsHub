package com.group.DAO;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.google.gson.Gson;
import com.group.model.Category;
import com.group.model.Products;
@Repository
public class AddToCartDAO {
@Autowired
SessionFactory	sessionFactory;
public String displayRecord(String pcartid)
{
	Session con=sessionFactory.openSession();

	con.beginTransaction();
	List li=con.createQuery(" from Products where prodid='"+pcartid+"'").list();
		Gson gobj=new Gson();
		String cartdata=gobj.toJson(li);
		System.out.println(cartdata);
	con.getTransaction().commit();
	con.close();
	return cartdata;
}
}