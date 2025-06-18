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

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@RestController
@RequestMapping("/demand")
public class DemandForFreshPropertyKashipur {

	@PostMapping("/auto-kashipur")
	public String demandautokashipur(@RequestBody String obj, @RequestParam("ulb") String ulbName,
			@RequestParam("fy") String fYear, @RequestParam("token") String token, @RequestParam("euuid") String euuid,
			@RequestParam("yearcount") int yearcount) {
		String result = "";
		String[] fyr = fYear.split("-");

		String fYearText = fyr[1].subSequence(2, 4).toString();

		ZoneId zoneId = ZoneId.of("Etc/UTC");

		String fyss[] = { "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026" };
		Map<String, Long> startDate = new HashMap<String, Long>();
		Map<String, Long> endDate = new HashMap<String, Long>();

		String[] fynew = new String[10];
		int countfuss = fyss.length;

		for (int i = 0; i < countfuss; i++) {

			LocalDateTime fromTime = LocalDateTime.parse(fyss[i] + "-04-01T00:00:00");
			long taxPeristartDateodFrom = fromTime.atZone(zoneId).toInstant().toEpochMilli();

			LocalDateTime toTime = LocalDateTime.parse(fyss[i] + "-03-31T23:59:59");
			long taxPeriodTo = toTime.atZone(zoneId).toInstant().toEpochMilli();

			startDate.put(fyss[i], taxPeristartDateodFrom);
			endDate.put(fyss[i], taxPeriodTo);
		}

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

			JSONObject DemandObj2 = new JSONObject();

			JSONObject PayerObj2 = new JSONObject();

			JSONObject DemandDetailsObj2 = new JSONObject();
			JSONObject DemandDetailsObj3 = new JSONObject();
			JSONObject Main = new JSONObject();
			JSONArray Demand = new JSONArray();

			JSONArray Demand3 = new JSONArray();
			JSONArray DemandDetails = new JSONArray();
			JSONObject userInfo = new JSONObject();
			String[] objArray = pidAray[i].split(":");
			String uuid = objArray[0];
			String ptId = objArray[1];
			String consumerType = objArray[2];
			String amount = objArray[3];

//			for Haldwani
			String amounts = objArray[3];
			int amt = Integer.parseInt(amount);
//			int amtPrcnt = amt * 15 / 100;
//			int finalAmt = amt + amtPrcnt;
//			System.out.println(finalAmt);

			userInfo.put("uuid", euuid);
			userInfo.put("type", "EMPLOYEE");

			searchRequestInfo.put("api_id", "Rainmaker");
			searchRequestInfo.put("ver", ".01");
			searchRequestInfo.put("ts", "");
			searchRequestInfo.put("action", "_create");
			searchRequestInfo.put("did", "1");
			searchRequestInfo.put("key", "");
			searchRequestInfo.put("msgId", "20170310130900|en_IN");
			searchRequestInfo.put("authToken", token);
			searchRequestInfo.put("userInfo", userInfo);

			assessmentInfo.put("tenantId", ulbName);
			assessmentInfo.put("propertyId", ptId);
			assessmentInfo.put("financialYear", fyr[0] + "-" + fYearText);
			assessmentInfo.put("assessmentDate", "1748843934000");
			assessmentInfo.put("source", "LEGACY_RECORD");
			assessmentInfo.put("channel", "CFC_COUNTER");
			assessmentInfo.put("status", "ACTIVE");

			RequestInfo2.put("tt", "tt");

			additionalDetails.put("RequestInfo", RequestInfo2);
			additionalDetails.put("reassement", "false");

			String[] years = { "0", "2025", "2024", "2023", "2022", "2021", "2020", "2019" };
			for (int j = 1; j <= yearcount; j++) {
				System.out.println("we are inside the loop");
				System.out.println(years[j]);

				JSONObject DemandObj = new JSONObject();
				JSONObject DemandDetailsObj = new JSONObject();
				JSONArray Demand2 = new JSONArray();
				JSONObject PayerObj = new JSONObject();
				JSONObject DemandDetailsObjs = new JSONObject();

				DemandObj.put("tenantId", ulbName);
				DemandObj.put("consumerCode", ptId);
				DemandObj.put("consumerType", consumerType);
				DemandObj.put("businessService", "PT");
				DemandObj.put("taxPeriodFrom", startDate.get(years[j]));
				DemandObj.put("taxPeriodTo", endDate.get(String.valueOf(Integer.parseInt(years[j]) + 1)));

				DemandDetailsObj.put("taxHeadMasterCode", "PT_TAX");
				DemandDetailsObj.put("taxAmount", amount);
				DemandDetailsObj.put("collectionAmount", 0);

//				start for Haldwani

//				DemandDetailsObjs.put("taxHeadMasterCode", "SWATCHATHA_TAX");
//				DemandDetailsObjs.put("taxAmount", amount);
//				DemandDetailsObjs.put("collectionAmount", 0);
//				end for Haldwani
				
				Demand2.add(DemandDetailsObj);
//				start for Haldwani
//				Demand2.add(DemandDetailsObjs);
//				end for Haldwani
				PayerObj.put("uuid", uuid);

				DemandObj.put("payer", PayerObj);
				DemandObj.put("demandDetails", Demand2);

				Demand.add(DemandObj);
			}

			additionalDetails.put("Demands", Demand);
			assessmentInfo.put("additionalDetails", additionalDetails);

			Main.put("RequestInfo", searchRequestInfo);
			Main.put("Assessment", assessmentInfo);

			System.out.println(Main.toString());

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
