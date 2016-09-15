package com.group.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.group.model.Supplier;
import com.group.model.UserDetails;

@Repository
public class UserDetailsDAO {
	@Autowired
	 SessionFactory	sessionFactory;
	public String displayUsers()
	{
		
		Session con=sessionFactory.openSession();
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
	
	Session con=sessionFactory.openSession();
	con.beginTransaction();
	con.save(adduser);
	con.getTransaction().commit();
	con.close();
	
}
	public void deleteUser(@RequestParam("id") String uid)
	{
		System.out.println("in cat dao with cid="+uid);
		Session con=sessionFactory.openSession();
		con.beginTransaction();
		UserDetails user = (UserDetails)con.get(UserDetails.class, uid); 
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
		users.setCustname(uobj.getCustname());
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
	
	
	
	
	
}
