package com.dashboard.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dashboard.main.entity.UlbDetails;
import com.dashboard.main.repository.UlbDetailsRepository;

@Service
public class UlbDetailsService {

	@Autowired
	UlbDetailsRepository ulbDetailsRepository;

	public List<UlbDetails>  getAllUlbDetails() {
		
List<UlbDetails> obj = ulbDetailsRepository.findAllUlbDetails();
		return obj;
	}
}
