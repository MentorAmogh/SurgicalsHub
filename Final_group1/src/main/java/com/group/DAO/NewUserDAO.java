package com.group.DAO;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.group.model.NewUser;
import com.group.model.UserDetails;

@Repository
public class NewUserDAO 
{
	@Autowired
	SessionFactory sessionFactory;
	
	public void addUser(NewUser samplecat)
	{
		UserDetails u=new UserDetails();
		u.setUsername(samplecat.getUsername());
		u.setPassword(samplecat.getPassword());
		Session s=sessionFactory.openSession();
		Transaction tx=s.getTransaction();
		tx.begin();
		s.save(samplecat);
		s.save(u);
		tx.commit();
		s.flush();
		s.clear();
		s.close();
	}	
	public NewUser getdetails(String samplecat)
	{
		
		Session s = sessionFactory.openSession();
	      Transaction tx = s.getTransaction();
	      tx.begin();
	      NewUser c=(NewUser)s.get(NewUser.class,samplecat);
         tx.commit();
	         s.flush();
	 		s.clear();
	 		s.close();
	 		return c;
		
	}
	
}
