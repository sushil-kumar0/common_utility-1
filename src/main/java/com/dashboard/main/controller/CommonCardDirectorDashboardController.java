package com.dashboard.main.controller;

import java.util.List;
import java.util.Map;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.boot.configurationprocessor.json.JSONArray;
import org.springframework.boot.configurationprocessor.json.JSONException;
import org.springframework.boot.configurationprocessor.json.JSONObject;
import org.springframework.web.client.RestTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.ResponseEntity;
import com.dashboard.main.entity.CommonCardDirectorDashboard;
import com.dashboard.main.service.CommonCardDirectorDashboardService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@RestController
public class CommonCardDirectorDashboardController {
	
	@Autowired
	CommonCardDirectorDashboardService commonCardDirectorDashboardService;
	
	

	@PostMapping("/common_card_data_create")
	public String CommonCardDataCreate(@RequestBody CommonCardDirectorDashboard obj) {
		String result = commonCardDirectorDashboardService.CommonCardDataCreateService(obj);
		return result;
	}
	
	@PostMapping("/common_card_data_fetch")
	public List<CommonCardDirectorDashboard> CommonCardDataFetch(@RequestBody CommonCardDirectorDashboard obj) {
		List<CommonCardDirectorDashboard> result = commonCardDirectorDashboardService.CommonCardDataFetchService(obj);
		return result;
	}
	
	@PostMapping("/name")
	public String name(@RequestBody String obj, @RequestParam("ulb") String ulbName) throws JsonMappingException, JsonProcessingException {
		
		String result = "";
		
		String [] pidAray = obj.split(",");
		
		
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		JSONObject searchRequest = new JSONObject();
		JSONObject searchRequestInfo = new JSONObject();
		RestTemplate restTemplate = new RestTemplate();
		JSONObject jsonObject = new JSONObject();
		ObjectMapper mapper = new ObjectMapper();
		
	 
		
		try {
			searchRequestInfo.put("api_id", "Mihy");
			searchRequestInfo.put("ver", ".01");
			searchRequestInfo.put("action", "");
			searchRequestInfo.put("did", "1");
			searchRequestInfo.put("key", "");
			searchRequestInfo.put("msgId", "20170310130900|en_IN");
			searchRequestInfo.put("requesterId", "");
			
			searchRequest.put("RequestInfo", searchRequestInfo);
			ResponseEntity<String> response = null;
			String resp;
			String resp2 = "";
			for (int i = 0; i < pidAray.length; i++) {
				String fetchUserDetailsUrl = "https://nagarsewa.uk.gov.in/property-services/property/_search?tenantId="+ulbName+"&propertyIds="+pidAray[i];
				HttpEntity<String> searchRequesthead = new HttpEntity<String>(searchRequest.toString(), headers);
				response = restTemplate.postForEntity(fetchUserDetailsUrl, searchRequesthead,
						String.class);
				
				String[] arr = response.getBody().split("},");
				
				//System.out.println(response);
				
				System.out.println(arr[1]);
				
				int doorNoStartIndex = arr[1].indexOf("doorNo")+9;
				int doorNoEndIndex = arr[1].indexOf("plotNo")-3;
				
				String finalDoorNo = arr[1].substring(doorNoStartIndex, doorNoEndIndex);
				
				int mohalaStartIndex = arr[1].indexOf("name")+7;
				int mohalaEndIndex = arr[1].indexOf("label")-3;
				
				String finalMohala = arr[1].substring(mohalaStartIndex, mohalaEndIndex);
				
				
				int nameStartIndex = arr[4].indexOf("name")+7;
				int nameEndIndex = arr[4].indexOf("gender")-3;
				
				String finalName = arr[4].substring(nameStartIndex, nameEndIndex);
				
				int guardianStartIndex = arr[4].indexOf("fatherOrHusbandName")+22;
				int guardianEndIndex = arr[4].indexOf("bloodGroup")-3;
				
				
				
				String finalGuardianName = arr[4].substring(guardianStartIndex, guardianEndIndex);
				
				
				if(finalGuardianName.equals("ul")) {
					finalGuardianName = "Null";
				}
				
				// System.out.println("Name:"+finalName);
				// System.out.println("Guardian:"+finalGuardianName);

				resp = pidAray[i]+":"+finalDoorNo+":"+finalMohala+":"+finalName+":"+finalGuardianName+",";
				resp2  = resp2 + resp;
				System.out.println(resp);
	        }
			System.out.println(resp2);
			
			 result=resp2;
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return result;
	}
	
	
	
	
	
}
