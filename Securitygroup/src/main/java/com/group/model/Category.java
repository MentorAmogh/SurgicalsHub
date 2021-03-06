package com.group.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Category 
{
	
	@Id
	private String	rcatid;
	@Column
	private String rcatdesc;
	@Column
	private String rcatname;
	public Category()
	{
	}
	public String getRcatdesc() {
		return rcatdesc;
	}
	public void setRcatdesc(String rcatdesc) {
		this.rcatdesc = rcatdesc;
	}
	public String getRcatid() {
		return rcatid;
	}
	public void setRcatid(String rcatid) {
		this.rcatid = rcatid;
	}
	public String getRcatname() {
		return rcatname;
	}
	public void setRcatname(String rcatname) {
		this.rcatname = rcatname;
	}
	public Category(String cid, String cname, String cdesc) {
		super();
		this.rcatid = cid;
		this.rcatname = cname;
		this.rcatdesc = cdesc;
	}
	public transient String datatoupdate="false";
	public String getDatatoupdate() {
		return datatoupdate;
	}
	public void setDatatoupdate(String datatoupdate) {
		this.datatoupdate = datatoupdate;
	}
}
