package com.group.DAO;
import java.util.*;

import org.springframework.stereotype.Repository;

import com.group.model.*;

@Repository
public class productsDAO 
{
	
List<Products> pobj;
	
public List<Products> display()
{
	pobj=new ArrayList<Products>();
	Products p1=new Products("P001","Parle Ji","Biscuit","S001",10);
	Products p2=new Products("P002","Marie","Biscuit","S002",15);
	Products p3=new Products("P003","Little Hearts","Biscuit","S003",17);
	Products p4=new Products("P004","Monaco","Biscuit","S004",19);
	Products p5=new Products("P005","Britania","Biscuit","S005",21);
	Products p6=new Products("P006","Dark Fantasy","Biscuit","S006",50);
	Products p7=new Products("P007","Hide And Sick","Biscuit","S007",20);
	pobj.add(p1);
	pobj.add(p2);
	pobj.add(p3);
	pobj.add(p4);
	pobj.add(p5);
	pobj.add(p6);
	pobj.add(p7);
	
	return pobj;
}
}