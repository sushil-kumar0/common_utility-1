package com.dashboard.main.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dashboard.main.entity.TempDb;
import com.dashboard.main.repository.TempDbRepository;

@Service
public class TempDbService {

	@Autowired
	TempDbRepository tempDbRepository;
	
	public List<String>tempService(){
		List<String>obj = tempDbRepository.findTemp();
		return obj;
	}
	
	public List<String>tempDynamicService(TempDb obj){
		String tenentId = obj.getTenantid();
		String month = obj.getCreatedtime();
		List<String>obj2 = tempDbRepository.findTempDynamic(tenentId);
		return obj2;
	}
}
