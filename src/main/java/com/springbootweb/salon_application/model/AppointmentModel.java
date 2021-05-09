package com.springbootweb.salon_application.model;

import java.util.*;

public class AppointmentModel {
	
	private int idappointment,price;
	private String userid;
	private Date date;
	public AppointmentModel()
	{
		idappointment=price=0;
		userid="";
		date=null;
	}
	public AppointmentModel(String userid,Date date,int price)
	{
		this.userid=userid;
		this.date=date;
		this.price=price;
	}
public int getIdappointment() {
		return idappointment;
	}
	public void setIdappointment(int idappointment) {
		this.idappointment = idappointment;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}

}
