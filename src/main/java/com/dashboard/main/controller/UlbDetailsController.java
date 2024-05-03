package com.dashboard.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.dashboard.main.entity.UlbDetails;
import com.dashboard.main.service.UlbDetailsService;

@RestController
public class UlbDetailsController {

	@Autowired
	UlbDetailsService ulbDetailsService;
	
	@GetMapping("/test")
	public ModelAndView test() {
		ModelAndView view = new ModelAndView();
		view.setViewName("test");
		return view;
	}
	
	@GetMapping("/ulbDetails")
	public List<UlbDetails> getUlbDetails() {
		List<UlbDetails> obj =  ulbDetailsService.getAllUlbDetails();
		return obj;
	}
}
