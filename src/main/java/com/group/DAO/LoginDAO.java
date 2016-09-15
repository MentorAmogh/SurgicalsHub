package com.group.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.group.model.Category;
import com.group.model.UserDetails;
@Repository
public class LoginDAO {
	@Autowired
	SessionFactory	sessionFactory;
	public UserDetails get(String passedid)
	{
		Session con=sessionFactory.openSession();
		con.beginTransaction();
		UserDetails udet=(UserDetails)con.get(UserDetails.class,passedid);
		return udet;
	}

}