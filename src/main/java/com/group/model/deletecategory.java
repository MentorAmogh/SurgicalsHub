package com.group.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class deletecategory 
{
	@Id
	private String	rcatid;
	public deletecategory()
	{
	}
	public String getRcatid() {
		return rcatid;
	}
	public void setRcatid(String rcatid) {
		this.rcatid = rcatid;
	}
}
