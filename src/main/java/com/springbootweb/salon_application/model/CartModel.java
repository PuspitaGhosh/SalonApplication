package com.springbootweb.salon_application.model;

import org.springframework.stereotype.Component;

@Component
public class CartModel {
	
	private int cid;
	
	private int price;
	private String type,id;
	
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	
	public CartModel()
	{
		id="";
		price=0;
		type="";
	}
	public CartModel(String id,String type,int price)
	{
		this.id=id;
				this.price=price;
		this.type=type;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

}
