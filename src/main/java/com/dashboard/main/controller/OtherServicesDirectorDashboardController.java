package com.dashboard.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import com.dashboard.main.entity.OtherServicesDirectorDashboard;
import com.dashboard.main.service.OtherServicesDirectorDashboardService;

@RestController
public class OtherServicesDirectorDashboardController {
	@Autowired
	OtherServicesDirectorDashboardService otherServicesDirectorDashboardService;

	@PostMapping("/other_service_data_create")
	public String createOtherServicesData(@RequestBody OtherServicesDirectorDashboard obj) {
		String year = obj.getYear();
		String month = obj.getMonth();
		String ulbName = obj.getUlbName();
		String extra = obj.getExtra();
		String result = null;
		System.out.println(obj);
		if (year != null && month != null && ulbName != null && extra != null) {
			result = otherServicesDirectorDashboardService.OtherServicesDataCreate(obj);
			return result;
		} else {
			return "Please enter Proper Data";
		}

	}

	@PostMapping("/other_service_data_fetch")
	public List<OtherServicesDirectorDashboard> createOtherServicesFetch(@RequestBody OtherServicesDirectorDashboard obj) {
		
		List<OtherServicesDirectorDashboard> result = otherServicesDirectorDashboardService.OtherServicesDatafetch(obj);
		return result;
	}

}
