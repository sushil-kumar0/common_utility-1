package com.udd.PropertyTax.Demand;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.io.FileWriter;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import java.util.UUID;

@RestController
@RequestMapping("/demand")
public class DemandRollOver {

	@PostMapping("/specialCategory")
	public String specialCategory(@RequestBody String obj) {
		String result = "";
		String[] fyr = obj.split(",");

		for (int i = 0; i < fyr.length; i++) {
			String[] fyr2 = fyr[i].split(":");
			UUID uuid = UUID.randomUUID();
			String query = "('" + uuid + "', 'uk.haldwani', '" + fyr2[0]
					+ "', 'COMPETENTAUTHORITY', 'NA', 'NA', 'ACTIVE', 'f87c6b86-6171-46da-9658-e437e03db834', 'f87c6b86-6171-46da-9658-e437e03db834', '1714733791566', '1714733791566')";
			String qry = query + ",";
			result = result + qry;
		}

		String hedqry = "INSERT INTO eg_pt_document (id, tenantid, entityid, documenttype, filestoreid, documentuid, status, createdby, lastmodifiedby, createdtime, lastmodifiedtime) VALUES";
		String finalQry = hedqry + result + ";";
		return finalQry;
	}

	@PostMapping("/rollover")
	public String rollover(@RequestBody String obj, @RequestParam("ulb") String ulbName,
			@RequestParam("fy") String fYear, @RequestParam("token") String token) {
		String result = "";
		String[] fyr = fYear.split("-");

		String fYearText = fyr[1].subSequence(2, 4).toString();

		ZoneId zoneId = ZoneId.of("Etc/UTC");

		LocalDateTime fromTime = LocalDateTime.parse(fyr[0] + "-04-01T00:00:00");
		long taxPeriodFrom = fromTime.atZone(zoneId).toInstant().toEpochMilli();

		LocalDateTime toTime = LocalDateTime.parse(fyr[1] + "-03-31T23:59:59");
		long taxPeriodTo = toTime.atZone(zoneId).toInstant().toEpochMilli();

		String[] pidAray = obj.split(",");

		ResponseEntity<String> response = null;
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		for (int i = 0; i < pidAray.length; i++) {

			JSONObject searchRequestInfo = new JSONObject();

			JSONObject assessmentInfo = new JSONObject();

			JSONObject additionalDetails = new JSONObject();

			JSONObject RequestInfo2 = new JSONObject();

			JSONObject DemandObj = new JSONObject();

			JSONObject PayerObj = new JSONObject();

			JSONObject DemandDetailsObj = new JSONObject();
			JSONObject DemandDetailsObjs = new JSONObject();

			JSONObject DemandDetailsObj2 = new JSONObject();

			// JSONObject DemandHead = new JSONObject();

			JSONObject Main = new JSONObject();
			JSONArray Demand = new JSONArray();
			JSONArray Demand2 = new JSONArray();
			JSONArray DemandDetails = new JSONArray();

			String[] objArray = pidAray[i].split(":");
			String uuid = objArray[0];
			String ptId = objArray[1];
			String consumerType = objArray[2];
			 String amount = objArray[3];

//			for Haldwani
//			String amount = objArray[3];
//			int amt = Integer.parseInt(amount);
//			int amtPrcnt = amt * 15 / 100;
//			int finalAmt = amt + amtPrcnt;
//			System.out.println(finalAmt);

			searchRequestInfo.put("api_id", "Rainmaker");
			searchRequestInfo.put("ver", ".01");
			searchRequestInfo.put("ts", "");
			searchRequestInfo.put("action", "_create");
			searchRequestInfo.put("did", "1");
			searchRequestInfo.put("key", "");
			searchRequestInfo.put("msgId", "20170310130900|en_IN");
			searchRequestInfo.put("authToken", token);

			assessmentInfo.put("tenantId", ulbName);
			assessmentInfo.put("propertyId", ptId);
			assessmentInfo.put("financialYear", fyr[0] + "-" + fYearText);
			assessmentInfo.put("assessmentDate", "1714852041000");
			assessmentInfo.put("source", "LEGACY_RECORD");
			assessmentInfo.put("channel", "CFC_COUNTER");
			assessmentInfo.put("status", "ACTIVE");

			RequestInfo2.put("tt", "tt");

			additionalDetails.put("RequestInfo", RequestInfo2);
			additionalDetails.put("reassement", "false");

			DemandObj.put("tenantId", ulbName);
			DemandObj.put("consumerCode", ptId);
			DemandObj.put("consumerType", consumerType);
			DemandObj.put("businessService", "PT");
			DemandObj.put("taxPeriodFrom", taxPeriodFrom);
			DemandObj.put("taxPeriodTo", taxPeriodTo);

			DemandDetailsObj.put("taxHeadMasterCode", "PT_TAX");
			DemandDetailsObj.put("taxAmount", amount);
			DemandDetailsObj.put("collectionAmount", 0);

//			For Haldwani
			
//			DemandDetailsObjs.put("taxHeadMasterCode", "SWATCHATHA_TAX");
//			DemandDetailsObjs.put("taxAmount", amount);
//			DemandDetailsObjs.put("collectionAmount", 0);

			Demand2.add(DemandDetailsObj);
//			For Haldwani
//			Demand2.add(DemandDetailsObjs);

			PayerObj.put("uuid", uuid);

			DemandObj.put("payer", PayerObj);
			DemandObj.put("demandDetails", Demand2);

			DemandDetails.add(DemandDetailsObj2);
			Demand.add(DemandObj);

			additionalDetails.put("Demands", Demand);

			assessmentInfo.put("additionalDetails", additionalDetails);

			assessmentInfo.put("additionalDetails", additionalDetails);

			Main.put("RequestInfo", searchRequestInfo);
			Main.put("Assessment", assessmentInfo);

			System.out.println("Demand Initiated for PropertId: "+ptId);
			String fetchUserDetailsUrl = "https://nagarsewa.uk.gov.in/property-services/assessment/_create?tenantId="
					+ ulbName;
			try {
				HttpEntity<String> searchRequesthead = new HttpEntity<String>(Main.toString(), headers);
				response = restTemplate.postForEntity(fetchUserDetailsUrl, searchRequesthead, String.class);

				 

				String statusCode = response.getStatusCode().toString();
				String result2 = ptId + ":" + statusCode + "\n";
				result = result + result2;

				System.out.println("========================Property Count: ======================" + i);

			} catch (Exception e) {

				System.out.println("PropertyId: " + ptId + " .Showing error: error");
				// String result2 = ptId + ":" + error + "\n";
				String error = "error";
				System.out.println(e);
				String result2 = ptId + ":" + error + "\n";
				result = result + result2;
				continue;
			}

			WriteToFile(result);

		}

		WriteToFile(result);

		return result;

	}

	public static void WriteToFile(String text) {
		try {
			FileWriter myWriter = new FileWriter("Logs.txt");
			myWriter.write(text);
			myWriter.close();
			System.out.println("Successfully wrote to the file.");
		} catch (IOException e) {
			System.out.println("An error occurred.");
			e.printStackTrace();
		}
	}

}
