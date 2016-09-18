package com.group.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.group.model.Login;
import com.group.model.Supplier;
import com.group.model.UserDetails;

@Repository
public class UserDetailsDAO {
	@Autowired
	SessionFactory	sessionFactory;
	Session con;
	public String displayUsers()
	{
		
		 con=sessionFactory.openSession();
		con.beginTransaction();
		List li=con.createQuery(" from UserDetails").list();
			Gson gobj=new Gson();
			String data=gobj.toJson(li);
			System.out.println(data);
		con.getTransaction().commit();
		con.close();
		return data;
	}
	public void addUsers(UserDetails adduser)
	{
	System.out.println("1");
	 con=sessionFactory.openSession();
	con.beginTransaction();
	con.save(adduser);
	con.getTransaction().commit();
	con.close();
	
}
	public void deleteUser(@RequestParam("id") String usid)
	{
		System.out.println("in userdetails dao with user id="+usid);
		Session con=sessionFactory.openSession();
		con.beginTransaction();
		UserDetails user = (UserDetails)con.get(UserDetails.class, usid); 
       con.delete(user); 
       con.getTransaction().commit();
  	}
	public void updateUser(UserDetails uobj)
	{
		Session con=sessionFactory.openSession();
		con.beginTransaction();
		String userid=uobj.getUserid();
		UserDetails users = (UserDetails)con.get(UserDetails.class, userid); 
		users.setAddress(uobj.getAddress());
		users.setUsername(uobj.getUsername());
		users.setAddress(uobj.getAddress());
		users.setMobile(uobj.getMobile());
		con.update(users);
		con.getTransaction().commit();
		con.close();
	}
	
	public UserDetails displayRecord(String userid)
	{
		Session con=sessionFactory.openSession();
		con.beginTransaction();
		UserDetails newuser=(UserDetails)con.get(UserDetails.class,userid);
		return newuser;
	}
	
	
	//Login Details
	
	
	public Login get(String logid)
	{
		con=sessionFactory.openSession();
		con.beginTransaction();
		Login udet=(Login)con.get(Login.class,logid);
		return udet;
	}
	public String displayLogins()
	{
		con=sessionFactory.openSession();
		con.beginTransaction();
		List li=con.createQuery(" from USERDETAILS").list();
			Gson gobj=new Gson();
			String data=gobj.toJson(li);
			System.out.println(data);
		con.getTransaction().commit();
		con.close();
		return data;
	}
	public void addLogin(Login logcat)
	{
		
		Session con=sessionFactory.openSession();
		con.beginTransaction();
		con.save(logcat);
		con.getTransaction().commit();
		con.close();
		
	}
	
	

	
	
}
