package com.udd.PropertyTax;

import org.springframework.boot.configurationprocessor.json.JSONArray;
import org.springframework.boot.configurationprocessor.json.JSONException;
import org.springframework.boot.configurationprocessor.json.JSONObject;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Integration {

	@PostMapping("/inte")
	public String propertyIntegration(@RequestBody String obj,@RequestParam("ulb") String ulb,@RequestParam("key") String key) {
		//main json
		
		System.out.println("hello");
		JSONObject main = new JSONObject();
		
		JSONObject requestInfo = new JSONObject();
		JSONObject property = new JSONObject();
		
		JSONObject address = new JSONObject();
		//sub of address
		JSONObject locality = new JSONObject();
		
		JSONObject additionalDetails= new JSONObject();
		
		JSONObject owner = new JSONObject();
		JSONArray ownerArray = new JSONArray();
		JSONArray ownerDocumentArray = new JSONArray();
		JSONObject ownerDocument= new JSONObject();
		
		JSONObject unit = new JSONObject();
		JSONArray unitArray= new JSONArray();
		
		JSONObject constructionDetail = new JSONObject();
		
		
		try {
			requestInfo.put("api_id", "Rainmaker");
			requestInfo.put("ver", ".01");
			requestInfo.put("ts", "");
			requestInfo.put("action", "_create");
			requestInfo.put("did", "1");
			requestInfo.put("key", "");
			requestInfo.put("msgId", "20170310130900|en_IN");
			requestInfo.put("authToken", key);
			
			property.put("tenantId", ulb);
			property.put("address", address);
			property.put("additionalDetails", additionalDetails);
			property.put("owners", ownerArray);
			property.put("units", unitArray);
			property.put("usageCategoryMajor", ulb);
			property.put("landArea", ulb);
			property.put("propertyType", ulb);
			property.put("noOfFloors", ulb);
			property.put("ownershipCategory", ulb);
			property.put("source", ulb);
			property.put("channel", ulb);
			property.put("status", ulb);
			property.put("creationReason", ulb);
			property.put("superBuiltUpArea", ulb);
			property.put("usageCategory", ulb);
			
			
			locality.put("code", ulb);
			locality.put("area", ulb);
			
			additionalDetails.put("roadType", ulb);
			additionalDetails.put("thana", ulb);
			additionalDetails.put("constructionYear", ulb);
			
			ownerDocument.put("documentUid", ulb);
			ownerDocument.put("documentType", ulb);
			ownerDocument.put("fileStoreId", ulb);
			
			ownerDocumentArray.put(ownerDocument);
			
			owner.put("name", ulb);
			owner.put("mobileNumber", ulb);
			owner.put("fatherOrHusbandName", ulb);
			owner.put("emailId", ulb);
			owner.put("permanentAddress", ulb);
			owner.put("relationship", ulb);
			owner.put("ownerType", ulb);
			owner.put("gender", ulb);
			owner.put("documents", ownerDocumentArray);
			
			 
			ownerArray.put(owner);
			
			constructionDetail.put("builtUpArea", ulb);
			constructionDetail.put("constructionType", ulb);
			
			unit.put("constructionYear", ulb);
			unit.put("occupancyType", ulb);
			unit.put("ConstructionType", ulb);
			unit.put("floorNo", ulb);
			unit.put("arv", ulb);
			unit.put("tenantId", ulb);
			unit.put("usageCategory", ulb);
			unit.put("gender", ulb);
			unit.put("unitType", ulb);
			unit.put("constructionDetail", constructionDetail);
			
			unitArray.put(unit);
			
			 
			address.put("city", ulb);
			address.put("doorNo", ulb);
			address.put("buildingName", ulb);
			address.put("pincode", ulb);
			address.put("street", ulb);
			address.put("locality", locality);
			address.put("additionalDetails", additionalDetails);
			address.put("owners", owner);
			
			
		main.put("RequestInfo", requestInfo);
		main.put("Property", property);
			
 
					
			System.out.println(main);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return main.toString();
		
	}
}
