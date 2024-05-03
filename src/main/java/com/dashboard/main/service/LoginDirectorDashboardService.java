package com.dashboard.main.service;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dashboard.main.entity.UserDetails;
import com.dashboard.main.repository.LoginDirectorDashboardRepository;

@Service
public class LoginDirectorDashboardService {

	@Autowired
	LoginDirectorDashboardRepository loginDirectorDashboardRepository;

	public String loginAuthService(UserDetails obj) {
		String userName = obj.getUserName();
		String password = obj.getPassword();
		String service = obj.getService();

		if (userName != null && password != null && service != null) {
			int count = loginDirectorDashboardRepository.findByUserDetails(userName, password, service);
			if(count>=1) {
				return"success";
			}else {
				return"fail";
			}
		}
		return "Please Enter Credentials";

	}
	
	public String createUserService(UserDetails obj) {
		String userName = obj.getUserName();
		String password = obj.getPassword();
		String service = obj.getService();
		LocalDate date = LocalDate.now(); 
		if (userName != null && password != null && service != null) {
			int count = loginDirectorDashboardRepository.findByUserDetails(userName, password, service);
			if(count>=1) {
				return"User Already Exist";
			}else {
				obj.setLoginDate(date.toString());
				loginDirectorDashboardRepository.save(obj);
				return"User Added Successfully";
			}
		}
		return "Please Enter Credentials";

	}
}
