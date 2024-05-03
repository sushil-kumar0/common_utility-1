package com.udd.PropertyTax;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;

@RestController
public class BillingSlab {

	@PostMapping("/billingSlab")
	public String billingSlab(@RequestBody String obj) {

		String result = "";

		String[] pidAray = obj.split(",");
		String resp;
		String resp2 = "";

		for (int i = 0; i < pidAray.length; i++) {
			String[] pidAray2 = pidAray[i].split(":");
			
			String query1 = "IMMOVABLE.SHED:"+pidAray2[0]+":"+pidAray2[1]+",";
			String query2 = "IMMOVABLE.SHOP:"+pidAray2[0]+":"+pidAray2[1]+",";
			String query3 = "IMMOVABLE.GODOWN:"+pidAray2[0]+":"+pidAray2[1]+",";
			String query4 = "IMMOVABLE.WORKSHOP:"+pidAray2[0]+":"+pidAray2[1]+",";
			String query5 = "IMMOVABLE.OPENLAND:"+pidAray2[0]+":"+pidAray2[1]+",";
			String query6 = "IMMOVABLE.INDUSTRIALUNIT:"+pidAray2[0]+":"+pidAray2[1]+",";
			String query7 = "IMMOVABLE.OTHERPERMISES:"+pidAray2[0]+":"+pidAray2[1]+",";
			String query8 = "IMMOVABLE.GARAGE:"+pidAray2[0]+":"+pidAray2[1]+",";
			String query9 = "IMMOVABLE.OPENSPACEOFBUILDING:"+pidAray2[0]+":"+pidAray2[1]+",";
			String query10 = "MOVABLE.HDV:"+pidAray2[0]+":"+pidAray2[1]+",";
			String query11 = "MOVABLE.MDV:"+pidAray2[0]+":"+pidAray2[1]+",";
			
			resp = query1+query2+query3+query4+query5+query6+query7+query8+query9+query10+query11;
			resp2  = resp2 + resp;
			//System.out.println(resp2);

		}

		result  = resp2;
		return result;
	}
	
	@PostMapping("/tradeJson")
	public String tradeJson(@RequestBody String obj) {
		
		String result = "";

		String[] pidAray = obj.split(",");
		String resp;
		String resp2 = "";
		
		for (int i = 0; i < pidAray.length; i++) {
			String[] pidAray2 = pidAray[i].split(":");
			
			String query1 = "{\n"
					+ "    \"code\": \""+pidAray2[0]+",\n"
					+ "    \"uom\": null,\n"
					+ "    \"applicationDocument\": [\n"
					+ "      {\n"
					+ "        \"applicationType\": \"NEW\",\n"
					+ "        \"documentList\": [\n"
					+ "          \""+pidAray2[1]+",\n"
					+ "          \""+pidAray2[2]+",\n"
					+ "          \"OWNERPHOTO\"\n"
					+ "        ]\n"
					+ "      },\n"
					+ "      {\n"
					+ "        \"applicationType\": \"RENEWAL\",\n"
					+ "        \"documentList\": [\n"
					+ "          \""+pidAray2[1]+",\n"
					+ "          \""+pidAray2[2]+",\n"
					+ "          \"OWNERPHOTO\",\n"
					+ "          \"OLDLICENSENO\"\n"
					+ "        ]\n"
					+ "      }\n"
					+ "    ],\n"
					+ "    \"verificationDocument\": [],\n"
					+ "    \"active\": true,\n"
					+ "    \"type\": \"TL\"\n"
					+ "  },";
			
			resp = query1;
			resp2  = resp2 + resp;
			//System.out.println(resp2);

		}

		result  = resp2;
		return result;
	}
	

}
