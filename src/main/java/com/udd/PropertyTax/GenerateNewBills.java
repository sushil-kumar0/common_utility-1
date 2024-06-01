package com.udd.PropertyTax;

import org.json.simple.JSONObject;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class GenerateNewBills {
	
	@PostMapping("/generate-bills")
	public String GenerateNewBillsController(@RequestBody String obj,@RequestParam("ulb") String ulb,@RequestParam("token") String token) {
		String result = "";
		String [] ptid = obj.split(",");
		System.out.println(ptid[0]);
		
		ResponseEntity<String> response = null;
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		
		for(int i=0; i<ptid.length; i++) {
			
			JSONObject searchRequestInfo = new JSONObject();
			JSONObject additionalDetails = new JSONObject();
			
			searchRequestInfo.put("api_id", "Rainmaker");
			searchRequestInfo.put("ver", ".01");
			searchRequestInfo.put("ts", "");
			searchRequestInfo.put("action", "_get");
			searchRequestInfo.put("did", "1");
			searchRequestInfo.put("key", "");
			searchRequestInfo.put("msgId", "20170310130900|en_IN");
			searchRequestInfo.put("authToken", token);
			
			additionalDetails.put("RequestInfo", searchRequestInfo);
			
			String fetchUserDetailsUrl = "https://nagarsewa.uk.gov.in/billing-service/bill/v2/_fetchbill?consumerCode="+ptid[i]+"&tenantId="+ulb+"&businessService=PT";
	
			try {
				System.out.println(fetchUserDetailsUrl);
				System.out.println(additionalDetails);
				HttpEntity<String> searchRequesthead = new HttpEntity<String>(additionalDetails.toString(), headers);
				response = restTemplate.postForEntity(fetchUserDetailsUrl, searchRequesthead, String.class);

				 
				String statusCode = response.getStatusCode().toString();
				String result2 = ptid[i].toString() + ":" + statusCode + "\n";
				result = result + result2;

				System.out.println("========================Property Count:Success ======================" + i);

			} catch (Exception e) {

				System.out.println("========================Property Count:Error ======================" + i);
				System.out.println("PropertyId: " + ptid + " .Showing error: error");
				// String result2 = ptId + ":" + error + "\n";
				String error = "error";
				//System.out.println(e);
				String result2 = ptid[i].toString() + ":" + error + "\n";
				result = result + result2;
				continue;
			}
		}
		
		
		return result;
		
	}

}
