package com.group.model;

public class Products {
	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getSuppid() {
		return suppid;
	}

	public void setSuppid(String suppid) {
		this.suppid = suppid;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	private String pid;
	private String pname;
	private String desc;
	private String suppid;
	private int price;
	
	public Products(String pid, String pname, String desc, String suppId, int price) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.desc = desc;
		this.suppid = suppId;
		this.price = price;
	}

}