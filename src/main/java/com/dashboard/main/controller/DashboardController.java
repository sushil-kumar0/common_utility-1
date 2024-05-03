package com.dashboard.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DashboardController {

	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView view = new ModelAndView();
		view.setViewName("index");
		return view;
	}
	
	@GetMapping("/testChart")
	public ModelAndView testChart() {
		ModelAndView view = new ModelAndView();
		view.setViewName("testChart");
		return view;
	}
	
	
}
