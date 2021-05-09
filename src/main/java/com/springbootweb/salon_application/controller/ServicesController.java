package com.springbootweb.salon_application.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.springbootweb.salon_application.dao.ServiceDao;
import com.springbootweb.salon_application.model.AppointmentModel;
import com.springbootweb.salon_application.model.CartModel;
import com.springbootweb.salon_application.model.ServicesModel;

@Controller
public class ServicesController {
	@Autowired
	ServiceDao dao;
	/*opens the about page*/
	@RequestMapping("/about")
	public String showAboutPage()
	{
		return "about";
	}
	/*opens the services page*/
	@RequestMapping("/services")
	public String showServicesPage()
	{
		return "services";
	}
	
	
	//********************opens the hairstyle,spa,shaving  page and DisplayHairstyle method from dao will give the select * hairstyle result*/
	@RequestMapping(value="/hairstyle",method=RequestMethod.GET)
	public String showHairStyle(Model m,HttpSession session,HttpServletRequest request)
	{
		if(session.getAttribute("user")==null){
			return "login";
		}
		else {
		List<ServicesModel> list=dao.displayHairstyle();
		m.addAttribute("list",list);
		return "hairstyle";
		}
	}
	@RequestMapping(value="/spa",method=RequestMethod.GET)
	public String showSpa(Model m,HttpSession session,HttpServletRequest request)
	{
		if(session.getAttribute("user")==null){
			return "login";
		}
		else {
		List<ServicesModel> list=dao.displaySpa();
		m.addAttribute("list",list);
		return "spa";
		}
	}
	
	@RequestMapping(value="/shaving",method=RequestMethod.GET)
	public String showShaving(Model m,HttpSession session,HttpServletRequest request)
	{
		if(session.getAttribute("user")==null){
			return "login";
		}
		else {
		List<ServicesModel> list=dao.displayShaving();
		m.addAttribute("list",list);
		return "shaving";
	}
	}
//**************	***************************************
	@RequestMapping(value="/baghair/{id}",method = RequestMethod.GET)  
    public String addhair(@PathVariable String id){  
        dao.addtocart(id);  
        return "redirect:/hairstyle";  
    }
	
	@RequestMapping(value="/bagspa/{id}",method=RequestMethod.GET)
	 public String addspa(@PathVariable String id){  
        dao.addtocart(id);  
        return "redirect:/spa";  
    }
	
	@RequestMapping(value="/bagshave/{id}",method=RequestMethod.GET)
	 public String addshave(@PathVariable String id){  
       dao.addtocart(id);  
       return "redirect:/shaving";  
   }

	
	
	@RequestMapping(value="/viewcart")
	public String viewcart(Model model,HttpSession session,HttpServletRequest request)
	{
		if(session.getAttribute("user")==null){
			return "login";
		}
//		else if(!(session.getAttribute("IsAppBooked")==null)){
//				return "appointment";
//			}
		else {
		List<CartModel> mem = dao.displayServices();
		model.addAttribute("style",mem);
		return "viewcart";
			}
	
	}
	@RequestMapping(value="/delete/{id}",method = RequestMethod.GET)  
    public String delete(@PathVariable("id") int id){ 
        dao.delete(id);  
        return "redirect:/viewcart";  
    }
	@RequestMapping(value="/history")
	public String showHistory(ModelMap model,HttpSession session,HttpServletRequest request)
	{
		if(session.getAttribute("user")==null){
			return "login";
		}
		else {
		String user=(String)request.getSession().getAttribute("user");
		model.put("user", user);
		List<AppointmentModel> app=dao.historyAppointment(user);
		model.addAttribute("style",app);
		return "history";
		}
	}
	/*this is not working*/
	@RequestMapping(value="/appointment")
	public String showAppointment(ModelMap model,HttpSession session,HttpServletRequest request)
	{
		if(session.getAttribute("user")==null){
			return "login";
		}
		else {
		double total=dao.sumPrice();
		if(total==0)
			{
			model.put("warn","Select Your Services For Appointment");
			return "viewcart";
			}
		else {
		String user=(String)request.getSession().getAttribute("user");
		model.put("user", user);
		// inserting the data if any services selected and getting the last row of appoint table for that user
		List<AppointmentModel> app=dao.bookAnAppointment(user);
		
		List<CartModel> mem = dao.displayServices();
		model.addAttribute("style",app);
		model.addAttribute("cart",mem);
		//session.setAttribute("IsAppBooked",app.get(0).getIdappointment());//*********
		//double total=dao.sumPrice();
		model.put("total",total);
		return "appointment";
	}
		}
	}
	@RequestMapping(value="/thankyou")
	public String showConfirmation(Model model,HttpSession session)
	{
		if(session.getAttribute("user")==null){
			return "login";
		}
		else {
		List<CartModel> mem = dao.displayServices();
		model.addAttribute("style",mem);
		return "thankyou";
		}
	}
	//** logging out after deleting all data of the cart table for that user
   @RequestMapping(value="/logout")
   public String showLogout(HttpSession session)
   {
	   dao.deletecart();
	   session.removeAttribute("user");
	  // session.removeAttribute("IsAppBooked");
	   session.invalidate();
	   return "home";
   }
   
}
