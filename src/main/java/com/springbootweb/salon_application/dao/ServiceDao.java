package com.springbootweb.salon_application.dao;

import java.util.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.springbootweb.salon_application.model.AppointmentModel;
import com.springbootweb.salon_application.model.CartModel;
import com.springbootweb.salon_application.model.ServicesModel;
//adding data to the book table by fetching the data from hair,spa,shave static table using id like sp1,hr1
@Repository
public class ServiceDao {	
	@Autowired
	JdbcTemplate template;
	
	public void addtocart(String id)
	{
		//setdata(id);
		 String sql = "insert into cart (id, type, price) select id, type, price FROM hairstyle where id=?";
		 String sql1 = "insert into cart (id, type, price) select id, type, price FROM spa where id=?";
		 String sql2 = "insert into cart (id, type, price) select id, type, price FROM shaving where id=?";


		try {
			
			template.update(sql,new Object[] {id});
			template.update(sql1,new Object[] {id});
			template.update(sql2,new Object[] {id});

		} catch (Exception e) {
			e.printStackTrace();

		}
		
		
		
	}
//	********************************just to display in hairstyle.jsp,spa,shaving
	public List<ServicesModel> displayHairstyle()
	{
		String sql = "select * from hairstyle";
		List<ServicesModel> query = template.query(sql,new RowMapper<ServicesModel>() {
			
			@Override
			public ServicesModel mapRow(ResultSet rs, int arg1) throws SQLException {
				ServicesModel h = new ServicesModel();
				h.setId(rs.getString("id"));
				h.setType(rs.getString("type"));
				h.setPrice(rs.getInt("price"));
				h.setImg(rs.getString("img"));
				h.setDes(rs.getString("description"));
				return h;
			}
		});
		
		return query;

	}
	public List<ServicesModel> displaySpa()
	{
		String sql = "select * from spa";
		List<ServicesModel> query = template.query(sql,new RowMapper<ServicesModel>() {
			
			@Override
			public ServicesModel mapRow(ResultSet rs, int arg1) throws SQLException {
				ServicesModel h = new ServicesModel();
				h.setId(rs.getString("id"));
				h.setType(rs.getString("type"));
				h.setPrice(rs.getInt("price"));
				h.setImg(rs.getString("img"));
				h.setDes(rs.getString("description"));
				return h;
			}
		});
		
		return query;

	}
	public List<ServicesModel> displayShaving()
	{
		String sql = "select * from shaving";
		List<ServicesModel> query = template.query(sql,new RowMapper<ServicesModel>() {
			
			@Override
			public ServicesModel mapRow(ResultSet rs, int arg1) throws SQLException {
				ServicesModel h = new ServicesModel();
				h.setId(rs.getString("id"));
				h.setType(rs.getString("type"));
				h.setPrice(rs.getInt("price"));
				h.setImg(rs.getString("img"));
				h.setDes(rs.getString("description"));
				return h;
			}
		});
		
		return query;

	}
//**********************************************************************
	/*public  void setdata(String id)
	{
		
		 String sql = "insert into cart (id, type, price) select id, type, price FROM hairstyle where id=?";
		 String sql1 = "insert into cart (id, type, price) select id, type, price FROM spa where id=?";
		 String sql2 = "insert into cart (id, type, price) select id, type, price FROM shaving where id=?";


		try {
			
			template.update(sql,new Object[] {id});
			template.update(sql1,new Object[] {id});
			template.update(sql2,new Object[] {id});

		} catch (Exception e) {
			e.printStackTrace();

		}
		
	}*/
	
	//******************* desplay the services present in cart table for aperticular logged in user 
	public List<CartModel> displayServices()
	{
		String sql = "select * from cart";
		List<CartModel> query = template.query(sql,new RowMapper<CartModel>() {
			
			@Override
			public CartModel mapRow(ResultSet rs, int arg1) throws SQLException {
				CartModel h = new CartModel();
				h.setCid(rs.getInt("idcart"));
				h.setId(rs.getString("id"));
				h.setType(rs.getString("type"));
				h.setPrice(rs.getInt("price"));
				
				return h;
			}
		});
		
		return query;
	}
	//********************appnt history for logged in user
	public List<AppointmentModel> historyAppointment(String user)				
	{
		String sql="select * from appointment where userid=?";
        List<AppointmentModel> query = template.query(sql,new Object[] {user},new RowMapper<AppointmentModel>() {
			
			@Override
			public AppointmentModel mapRow(ResultSet rs, int arg1) throws SQLException {
				AppointmentModel p = new AppointmentModel();
				p.setIdappointment(rs.getInt("idappointment"));  
				p.setUserid(rs.getString("userid"));
				p.setDate(rs.getDate("date"));
				p.setPrice(rs.getInt("price"));
				return p;
			}
		});
		
		return query;
	}
	
	
	
	public List<AppointmentModel> bookAnAppointment(String user)
	{
		AppointmentModel app=new AppointmentModel(user,new Date(),(int)sumPrice());
		setAppointment(app);                               //adding data to the appoint table
		int max=0;											// now selecting the last inserted row of the appoint table
		List<AppointmentModel> apt=historyAppointment(user);
		for(AppointmentModel m:apt)
		{
			if(m.getIdappointment()>max)
				max=m.getIdappointment();
		}
		System.out.println(max);
	String sql ="select * from appointment where idappointment=?";  // showing the last row of appoint table

	List<AppointmentModel> query = template.query(sql,new Object[] {max},new RowMapper<AppointmentModel>() {
		
		@Override
		public AppointmentModel mapRow(ResultSet rs, int arg1) throws SQLException {
			AppointmentModel p = new AppointmentModel();
			p.setIdappointment(rs.getInt("idappointment"));  
			p.setUserid(rs.getString("userid"));
			p.setDate(rs.getDate("date"));
			p.setPrice(rs.getInt("price"));
			return p;
		}
	});
	
	return query;
		
		
	}
	//**********inserting the values in the appoint table, it is called from  bookAnAppointment(String user) method
	 public int setAppointment(AppointmentModel app)
	 {
		 int c=0;
		 String sql="insert into appointment(userid,date,price) values(?,?,?)";
		 try
		 {
			c=template.update(sql, new Object[] {app.getUserid(),app.getDate(),app.getPrice()}); 
		 }
		 catch(Exception e)
		 {
			 e.printStackTrace();
		 }
		 return c;
	 }
	
	
	// deleting the perticular service from cart table , selected from viewcart.jsp for a user
	public void delete(int id)
	{  
		CartModel serv=new CartModel();
	    String sql="delete from cart where idcart=?";  
	     template.update(sql,new Object[] {id});  
	}  
	
    public double sumPrice()
    {
    	List<CartModel> cm=displayServices();
    	double sum=0;
    	for(CartModel c:cm)
    	{
    		sum=sum+c.getPrice();
    	}
    	return sum;
    }
    //*********deleting all details from cart table of logged in user after logged out 
    public void deletecart()
    {
    	String sql="delete from cart";
    	template.update(sql);
    	
    }
}
