package com.group.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Supplier {
	@Id 
	private String suppid;
	@Column
	private String	suppname;
	@Column
	private String suppaddr;
	@Column
	private String suppphn;
	@Column
	private String suppemail;
	
	public String getSuppid() {
		return suppid;
	}
	public void setSuppid(String suppid) {
		this.suppid = suppid;
	}
	public String getSuppname() {
		return suppname;
	}
	public void setSuppname(String suppname) {
		this.suppname = suppname;
	}
	public String getSuppaddr() {
		return suppaddr;
	}
	public void setSuppaddr(String suppaddr) {
		this.suppaddr = suppaddr;
	}
	public String getSuppphn() {
		return suppphn;
	}
	public void setSuppphn(String suppphn) {
		this.suppphn = suppphn;
	}
	public String getSuppemail() {
		return suppemail;
	}
	public void setSuppemail(String suppemail) {
		this.suppemail = suppemail;
	}
}
