package com.dashboard.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.dashboard.main.entity.UserDetails;
import com.dashboard.main.service.LoginDirectorDashboardService;

@RestController
public class LoginDirectorDashboardController {

	@Autowired
	LoginDirectorDashboardService loginDirectorDashboardService;
	
	@GetMapping("/login")
	public ModelAndView login() {
		ModelAndView view = new ModelAndView();
		view.setViewName("login");
		return view;
	}
	
	
	@PostMapping("/loginAuth")
	public String loginAuth(@RequestBody UserDetails obj, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String result = loginDirectorDashboardService.loginAuthService(obj);
		if(result.equals("success")) {
			session.setAttribute("service", obj.getService());
			return "success";
		}else if(result.equals("fail")) {
			return "fail";
		}else {
			return "something went wrong!";	
		}
		
	}
	
	
	@RequestMapping("/ServiceEditForm")
	public ModelAndView admin(HttpServletRequest request) {
		ModelAndView view = new ModelAndView();
		HttpSession session = request.getSession();
		String service = session.getAttribute("service").toString();
		if(service == null) {
			session.invalidate();
			view.setViewName("login");
			return view;
		}
		if(service.equals("SBMU")) {
			view.setViewName("sbmuEdit");
			return view;
		}else if(service.equals("DAYNULM")) {
			view.setViewName("daynulmEdit");
			return view;
		}else if(service.equals("PMAYHFA")) {
			view.setViewName("pmayhfaEdit");
			return view;
		}
		else if(service.equals("AMRUT")) {
			view.setViewName("amrutEdit");
			return view;
		}else if(service.equals("COMMON")) {
			view.setViewName("otherCommonEdit");
			return view;
		}else if(service.equals("COMMONCARDINFO")) {
			view.setViewName("commonCardEntryForm");
			return view;
		}
		else {
			view.setViewName("login");
			return view;
		}
	} 
	
	
	@PostMapping("/user_create")
	public String createUser(@RequestBody UserDetails obj,@RequestParam("key") String key) {
		String authKey = key;
		System.out.println(authKey);
		
		if(authKey.equals("Admin@123")) {
			
			String result = loginDirectorDashboardService.createUserService(obj);
			return result;
		}else {
			return "Please use Valid AuthKey in URL!";
		}
		
	}
	
	
	@GetMapping("/logout")
	public ModelAndView logout(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("login");
		HttpSession session = request.getSession();
		session.invalidate();
		// session.setAttribute("email", "0");
		return modelAndView;

	}
	
}
