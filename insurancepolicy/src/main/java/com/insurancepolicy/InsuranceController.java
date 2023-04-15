package com.insurancepolicy;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.method.annotation.SessionAttributesHandler;
import org.springframework.web.servlet.ModelAndView;

import jakarta.websocket.Session;

@Controller
@SessionAttributes({"loginId"})
public class InsuranceController
{
	
	@Autowired
	User userObj;
	
	@Autowired
	UserRepo userRepo;
	
	@Autowired
	Policy policyObj;
	
	@Autowired
	Policy policy;
	
	@Autowired
	PolicyRepo policyRepo;
	
	@GetMapping("/")
	public String showIndexPage()
	{
		System.out.println("index page");
		return "index";
	}
	
	@GetMapping("/login")
	public String showLoginPage()
	{
		System.out.println("login page");
		return "login";
	}
	
	@GetMapping("/signup")
	public String showSignupPage()
	{
		System.out.println("signup page");
		return "signup";
	}
	
	
	@GetMapping("/dashboard")
	public String showDashboardPage()
	{
		System.out.println("dashboard page");
		return "dashboard";
	}
	
	@GetMapping("/buypolicy")
	public String showBuyPolicyPage()
	{
		System.out.println("Buy Policy page");
		return "buypolicy";
	}
	
	@GetMapping("/logout")
	public String logout()
	{	
		System.out.println("Logout Successfully");
		
		return "index";
	}
	
	@PostMapping("/saveuser")
	public String saveUser(@ModelAttribute User userObj)
	{
		
		System.out.println("save user page");
		userRepo.save(userObj);
		return "index";
	}
	
	// for user login
	
	@PostMapping("/login")
	public ModelAndView loginUser(@ModelAttribute User userObj)
	{
		System.out.println(" user validation ");
		
		ModelAndView mv= new ModelAndView();
		
		String loginid = userObj.getLoginid();
		String password = userObj.getPassword();
		if(loginid.isEmpty() && password.isEmpty())
		{
			System.out.println("enter details");
			mv.setViewName("login");
			return mv;
		}
		System.out.println("you entered : "+loginid );
		System.out.println("you entered : "+password);
		
		User user = new User();
	try 
	  {
		 user= userRepo.findByLoginid(loginid).get();
		 user=userRepo.findByPassword(password).get();
		 String userPass=user.getPassword();
		 String userid=user.getLoginid();
		 if(userid.equals(loginid) && userPass.equals(password) )
		 {
			 System.out.println("login Successfully user is :"+userid);
			 mv.addObject("loginId", userid);
			 
			 mv.setViewName("dashboard");
			 return mv;
		 }
			 else 
			 {
				 System.out.println("Invalid Id or Password");
				 mv.setViewName("login");
				 return mv;
			 }
			 
	  }	
		catch(Exception e) {
		System.out.println("wrong input");
		}
		return mv;	
	}
	
	//for saving a policy into database
	
	@PostMapping("/savepolicy")
	public String savePolicy(@ModelAttribute Policy policyObj , @SessionAttribute("loginId") String loginId )
	{	
		System.out.println("Buy policy page");
		System.out.println("sesson attribute login id is :"+loginId);
		policyObj.setLoginId(loginId);
		policyRepo.save(policyObj);
		
		return "dashboard";
	}
	
	// for deleting policy
	
	@GetMapping("/deletepolicy{id}")
	public String deletePolicy(@PathVariable("id") int id )
	{	
		policy.setId(id);
		
		System.out.println("id is :"+ id);
		policyRepo.deleteById(id);
		
		System.out.println("Policy Deleted Successfully");
		
		return "dashboard";
	}
	
	@GetMapping("/portfolio")
	public ModelAndView displayPolicy(@SessionAttribute("loginId") String loginId)
	{	
		System.out.println("display Policy page");
		
		List<Policy> list= policyRepo.findByLoginId(loginId);
		
		ModelAndView mv = new ModelAndView();
				
		mv.addObject("list",list);
		
		mv.setViewName("portfolio");
		
		return mv;
	}
}
