package com.group.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

//original products data
@Entity
public class Products {
	@Id 
	private String prodid;
	@Column
	private String prodname;
	@Column
	private String proddesc;
	@Column
	private String suppid;
	@Column
	private String catid;
	@Column
	private int prodprice;
	@Column
	private int prodstock;
	
	public String getProdid() {
		return prodid;
	}
	public void setProdid(String prodid) {
		this.prodid = prodid;
	}
	public String getProdname() {
		return prodname;
	}
	public void setProdname(String prodname) {
		this.prodname = prodname;
	}
	public String getProddesc() {
		return proddesc;
	}
	public void setProddesc(String proddesc) {
		this.proddesc = proddesc;
	}
	public String getSuppid() {
		return suppid;
	}
	public void setSuppid(String suppid) {
		this.suppid = suppid;
	}
	public String getCatid() {
		return catid;
	}
	public void setCatid(String catid) {
		this.catid = catid;
	}
	public int getProdprice() {
		return prodprice;
	}
	public void setProdprice(int prodprice) {
		this.prodprice = prodprice;
	}
	public int getProdstock() {
		return prodstock;
	}
	public void setProdstock(int prodstock) {
		this.prodstock = prodstock;
	}
}
