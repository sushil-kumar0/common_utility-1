package com.dashboard.main.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.dashboard.main.entity.TempDb;
import com.dashboard.main.service.TempDbService;

@RestController
public class TempDbController {
	
	@Autowired
	TempDbService tempDbService;

	@PostMapping("/temp")
	public List<String> temp(){
		List<String> obj = tempDbService.tempService();
		return obj;		
	}
	
	@PostMapping("/temps")
	public List<String> tempDynamic(@RequestBody TempDb obj){
		System.out.println(obj);
		List<String> obj2 = tempDbService.tempDynamicService(obj);
		return obj2;		
	}
}
