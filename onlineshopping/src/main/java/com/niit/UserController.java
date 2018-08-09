package com.niit;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.UserDAO;
import com.niit.model.UserDetail;

@Controller
public class UserController
{
	
	@Autowired
	UserDAO userDAO;
	 @RequestMapping(value = "/signup", method = RequestMethod.GET)
	  public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mv = new ModelAndView();
	    mv.addObject("user", new UserDetail());
	    mv.setViewName("signup");
	    return mv;
	  }
	
	@RequestMapping(value="/registeruser",method = RequestMethod.POST)
	public ModelAndView showRegisteruser(@Valid @ModelAttribute("user") UserDetail user, BindingResult result) {
		if(result.hasErrors()) {
			ModelAndView mv =new ModelAndView("signup");
			return mv;
			
			
			
		}
		ModelAndView mv =new ModelAndView();
		user.setRole("USER");
		user.setEnabled(true);
		userDAO.registerUser(user);
		mv.setViewName("index");
		return mv;
	}
	 
	 
	 
	 
	 
	 
	 @RequestMapping(value = "/contact")
		public String showContact() {
			
			return "contact";

		}
		
		@RequestMapping(value = "/about")
		public String showAboutus() {
			
			return "about";

		}



    @RequestMapping(value="/login_success")
	public String loginSuccess(HttpSession session,Model m)
	{
		String page="";
		
		boolean loggedIn=false;
		
		SecurityContext securityContext=SecurityContextHolder.getContext();
		Authentication authentication=securityContext.getAuthentication();
		
		String username=authentication.getName();
		
		Collection<GrantedAuthority> roles=(Collection<GrantedAuthority>)authentication.getAuthorities();
		
		for(GrantedAuthority role:roles)
		{
			session.setAttribute("role", role.getAuthority());
			
			if(role.getAuthority().equals("ADMIN"))
			{
				loggedIn=true;
				page="AdminHome";
				session.setAttribute("loggedIn", loggedIn);
				session.setAttribute("username", username);
			}
			else
			{
				loggedIn=true;
				page="UserHome";
				session.setAttribute("loggedIn", loggedIn);
				session.setAttribute("username", username);
			}
			
		}
		
		return page;
	}
	
	@RequestMapping(value="/Login")
	public String showLoginPage()
	{
		return "Login";
	}
	
	@RequestMapping(value= {"/","/home","/index"})
	public String showIndexPage()
	{
		return "index";
	}
}
