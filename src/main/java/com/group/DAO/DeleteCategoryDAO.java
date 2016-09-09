package com.group.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.group.model.Category;
import com.group.model.deletecategory;
@Repository
public class DeleteCategoryDAO {

	@Autowired
 SessionFactory	sessionFactory;
public void deleteCategoryId(deletecategory cat)
{
	Session con=sessionFactory.openSession();
	deletecategory catdel=new deletecategory();
	con.beginTransaction();
	catdel.setRcatid(catdel.getRcatid());
	con.delete(catdel);
	con.getTransaction().commit();
	con.close();
	
	
}
}
