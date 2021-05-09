package com.springbootweb.salon_application.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.springbootweb.salon_application.dao.LoginDao;
import com.springbootweb.salon_application.model.LoginModel;

@Controller
public class LoginController {
	
	@Autowired
	LoginModel logmodel;
	@Autowired
	LoginDao logindao;
	
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String homePage()
	{
		
		return "home";
	}
	
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String loginPage(ModelMap model)
	{
		
		return "login";
	}
	
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView welcomePage(ModelMap model,@RequestParam String email,@RequestParam String password,HttpSession session)
	{
		ModelAndView mvc=new ModelAndView();
		LoginModel login=new LoginModel();
		login.setEmail(email);
		login.setPassword(password);
		
		String pass=logindao.checkIfRegistered(login);
		if(pass!=null)
		{
			if(!pass.equals(password))
			{
				model.put("mssg","Invalid Password!");
				mvc.setViewName("login");
				
			}
			else
			{
				session.setAttribute("user", login.getEmail());
				model.put("mssg", "Explore our site");
				mvc.setViewName("welcome");

			}
		}
		else {
			model.put("mssg","You are not a registered User!Please Register yourself.");
			mvc.setViewName("login");
		}
		return mvc;
	}
	
	
	@RequestMapping(value="/registration",method=RequestMethod.GET)
	public String registrationPage(ModelMap model)
	{
		return "registration";
	}
	
	
	@RequestMapping(value="/registration",method=RequestMethod.POST)
	public ModelAndView addRegisterPage(ModelMap model,@RequestParam String fname,@RequestParam String lname,@RequestParam String mobile,
			@RequestParam String email,@RequestParam String password)
	{
	    ModelAndView mvc=new ModelAndView();
		LoginModel  user = new LoginModel(fname,lname,mobile,email,password);
		String str=logindao.checkIfRegistered(user);
		if(str==null)
		{
			int t=logindao.addUserDetails(user);
			mvc.setViewName("login");
		}
		else
		{
			model.put("mssg", "You are an already registered user!Please login.");
			mvc.setViewName("login");
			
		}
		return mvc;
	}
	
	
	@RequestMapping(value="/welcome",method=RequestMethod.GET)
	public String showWelcomePage()
	{
		return "welcome";
	}

}

