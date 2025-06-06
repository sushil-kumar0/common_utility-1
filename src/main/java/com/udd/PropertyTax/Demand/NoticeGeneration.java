package com.udd.PropertyTax.Demand;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.xhtmlrenderer.layout.SharedContext;
import org.xhtmlrenderer.pdf.ITextRenderer;

import com.ironsoftware.ironpdf.PdfDocument;
import com.udd.PropertyTax.AppProperty;

@RestController
public class NoticeGeneration {
	@Autowired
	AppProperty myProperty;
	
	
	@PostMapping("/bulk-bills-hld")
	public String DemandBulkBill(@RequestBody String obj, @RequestParam("ulb") String ulbName) throws IOException {
		String[] ObjSplit = obj.split("@");
		StringBuilder sb = new StringBuilder();
		StringBuilder logs = new StringBuilder();
		sb.append("<html> <head> <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"> <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js\"></script> <title>https://nagarsewa.uk.gov.in/</title> </head> <body>");
		int count = 0;
		String Ward = "";
		int counter = 0;
		for (int i = 0; i < ObjSplit.length; i++) {
			
			counter++;
			
			String[] ObjSplit2 = ObjSplit[i].split(":");
			String OwnerName=ObjSplit2[0];
			String Address=ObjSplit2[1];
			Ward=ObjSplit2[2];
			String Mobile=ObjSplit2[3];
			String PropertyId=ObjSplit2[4];
			String amount=ObjSplit2[5];
			int Amount = Integer.parseInt(amount); 
			int SAmount = Amount*2;
			int rebate = SAmount*25/100;
			int Total = ((Amount*2)+SAmount)-rebate; 
			String IssueDate = "31/05/2025";
			String DueDate = "31/03/2026";
			
			logs.append(PropertyId+",");
			
			
			
			sb.append("<div class=\"container-fluid p-5  text-center\"> <img class=\"Layer11\" style=\"width: 1000px; \" src="+myProperty.getImagePath()+" /> </div> <div class=\"container-fluid\"> <div class=\"row\"> <div class=\"col-sm-6 \" style=\" border: 3px black solid; \"> <div class=\"Cards\"  style= \"margin-left: 30px; \"> <div class=\"OwnerNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Property Owner Details: </span><span>"+OwnerName+"-"+Address+"-"+Ward+"</span></div> <div class=\"MobileNumber\" style=\"width: 556px; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Mobile Number: </span><span>"+Mobile+"</span></div> <div class=\"ApplicationNumber\" style=\"width: 556px; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Property ID: </span><span>"+PropertyId+"</span></div>  <div class=\"Avatar\" style=\"justify-content: flex-start; align-items: center; gap: 16px; display: inline-flex\"> <div class=\"Frame2610301\"></div> </div> </div> </div> <div class=\"col-sm-6 \" style=\"  border: 3px black solid; \"> <div class=\"Cards\" style= \"margin-left: 30px; \">  <div class=\"MobileNumber\" style=\"width: 556px; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Period: </span><span>01/04/2025 - 31/03/2026 </span></div> <div class=\"ApplicationNumber\" style=\"width: 556px; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Issue Date: </span><span>"+IssueDate+"</span></div> <div class=\"Address\" style=\"width: 556px; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Due Date: </span><span>"+DueDate+"</span></div> <div class=\"Avatar\" style=\"justify-content: flex-start; align-items: center; gap: 16px; display: inline-flex\"> <div class=\"Frame2610301\"></div> </div> </div> </div> </div> </div> <div class=\"container-fluid\"> <div class=\"row\"> <div class=\"col-sm-12 mt-4\" style=\"border: 3px black solid; \"> <div class=\"Cards\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 25px; font-family: Inter; font-weight: 600; line-height: 50px; word-wrap: break-word\">Service / Head Name Property Tax</div> </div> </div> </div> <div class=\"row\"> <div class=\"col-sm-12 mt-1 \" style=\"border: 1px black solid; \"> <div class=\"Cards\" style= \"gap: 8px; \"> <div class=\"row\"> <div class=\"col\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">Property Tax (2024-2025)</div> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">"+Amount+"</div> </div> <div class=\"col\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">Total Swatchata Tax</div> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">"+SAmount+"</div> </div> <div class=\"col\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">Late Fees</div> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">0</div> </div> <div class=\"col\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">Rebate</div> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">"+rebate+"</div> </div> </div> </div> </div> </div> <div class=\"row\"> <div class=\"col-sm-12  mt-1\" style=\"border: 1px black solid; \"> <div class=\"Cards\" style= \"gap: 8px; \"> <div class=\"row\"> <div class=\"col\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">Total Arrears</div> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">"+Amount+"</div> </div> <div class=\"col\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">RoundOff</div> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">0</div> </div> <div class=\"col\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">Total Tax</div> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">"+Total+"</div> </div> <div class=\"col\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"></div> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"></div> </div> </div> </div> </div> </div> </div> <div class=\"container-fluid\"> <div class=\"row\"> <div class=\"col-sm-12 mt-4\"> <div class=\"Cards\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 25px; font-family: Inter; font-weight: 600; line-height: 50px; word-wrap: break-word;  text-align: center;\">Acknowledgment</div> </div> </div> </div> <div class=\"row\"> <div class=\"col-sm-7 \"> <div class=\"Cards\"  style= \"margin-left: 30px; \"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Owner Name: </span><span>"+OwnerName+"</span></div>  <div class=\"Address\" style=\"width: 556px; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Address: </span><span>"+Address+"-"+Ward+"</span></div> <div class=\"Avatar\" style=\"justify-content: flex-start; align-items: center; gap: 16px; display: inline-flex\"> <div class=\"Frame2610301\"></div> </div> </div> </div> <div class=\"col-sm-5 \"> <div class=\"Cards\" style= \"margin-left: 30px; \"> <div class=\"MobileNumber\" style=\"width: 556px; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Property ID: </span><span>"+PropertyId+"</span></div> <div class=\"MobileNumber\" style=\"width: 556px; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Due Payment: </span><span>"+Total+" </span></div> <div class=\"Avatar\" style=\"justify-content: flex-start; align-items: center; gap: 16px; display: inline-flex\"> <div class=\"Frame2610301\"></div> </div> </div> </div> </div> </div> <div class=\"container-fluid\"> <div class=\"row\"> <div class=\"col-sm-12 mt-4\"> <div class=\"Cards\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 25px; font-family: Inter; font-weight: 600; line-height: 50px; word-wrap: break-word;  text-align: right;\">Commissioner/EO</div> </div> </div> </div> </div> <div class=\"container-fluid\"> <div class=\"row\"> <div class=\"col-sm-12\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Note: </span></div> <div class=\"MobileNumber\" style=\" color: black; font-size: 20px; font-family: Inter; font-weight: 500;  word-wrap: break-word\"><span>1. Payment received by cheque/demand draft shall be subject to realization.</span></div> <div class=\"Address\" style=\"color: black; font-size: 20px; font-family: Inter; font-weight: 500; word-wrap: break-word\"><span>2. This document is not a proof of Property Ownership and regularization of unauthorized construction.</span></div> <div class=\"MobileNumber\" style=\"color: black; font-size: 20px; font-family: Inter; font-weight: 500;  word-wrap: break-word\"><span>3. This is a computer generated document, hence requires no signature.</span></div> <div class=\"MobileNumber\" style=\"color: black; font-size: 20px; font-family: Inter; font-weight: 500;  word-wrap: break-word\"><span>4. Assessment & Payment is subject to verifcation/Scrutiny by competitive authority.</span></div> </div> </div> </div>");
			if(counter==500) {
				counter = 0;
				count++;
				
				sb.append("</body></html>");
				
				Path fileName = Path.of(myProperty.getPdfPath() + Ward +"-"+count+ ".html");
				
				Files.writeString(fileName, sb.toString());
				
				System.out.println("###############################"+ Ward +"-"+count+".pdf###############################");
				System.out.println(logs.toString());
				System.out.println(fileName);
				
				logs = new StringBuilder();
				 sb = new StringBuilder();
				 sb.append("<html> <head> <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"> <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js\"></script> <title>https://nagarsewa.uk.gov.in/</title> </head> <body>");
					
			}
		}
		
		sb.append("</body></html>");
		
		int last = count+1;
		
		Path fileName = Path.of(myProperty.getPdfPath() +Ward+"-"+last+ ".html");
		
		Files.writeString(fileName, sb.toString());
		
		System.out.println("###############################"+ Ward +"-"+last+".pdf###############################");
		System.out.println(logs.toString());
		System.out.println(fileName);
		
		logs = new StringBuilder();
	
		return "Your Bill se Generated Succesfully";
	}
	
	
	@PostMapping("/bulk-bills-rorke")
	public String DemandBulkBillrorke(@RequestBody String obj, @RequestParam("ulb") String ulbName) throws IOException {
		String[] ObjSplit = obj.split("@");
		StringBuilder sb = new StringBuilder();
		StringBuilder logs = new StringBuilder();
		sb.append("<html> <head> <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"> <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js\"></script> <title>https://nagarsewa.uk.gov.in/</title> </head> <body>");
		int count = 0;
		String Ward = "";
		int counter = 0;
		for (int i = 0; i < ObjSplit.length; i++) {
			
			counter++;
			
			String[] ObjSplit2 = ObjSplit[i].split(":");
			String OwnerName=ObjSplit2[0];
			String Address=ObjSplit2[1];
			Ward=ObjSplit2[2];
			String Mobile=ObjSplit2[3];
			String PropertyId=ObjSplit2[4];
			String amount=ObjSplit2[5];
			int Amount = Integer.parseInt(amount); 
			int SAmount = 0;
			int rebate = 0;
			int Total = Amount; 
			String IssueDate = "31/05/2025";
			String DueDate = "31/03/2026";
			
			logs.append(PropertyId+",");
			
			
			
			sb.append("<div class=\"container-fluid p-5  text-center\"> <img class=\"Layer11\" style=\"width: 1000px; \" src="+myProperty.getImagePath()+" /> </div> <div class=\"container-fluid\"> <div class=\"row\"> <div class=\"col-sm-6 \" style=\" border: 3px black solid; \"> <div class=\"Cards\"  style= \"margin-left: 30px; \"> <div class=\"OwnerNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Property Owner Details: </span><span>"+OwnerName+"-"+Address+"-"+Ward+"</span></div> <div class=\"MobileNumber\" style=\"width: 556px; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Mobile Number: </span><span>"+Mobile+"</span></div> <div class=\"ApplicationNumber\" style=\"width: 556px; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Property ID: </span><span>"+PropertyId+"</span></div>  <div class=\"Avatar\" style=\"justify-content: flex-start; align-items: center; gap: 16px; display: inline-flex\"> <div class=\"Frame2610301\"></div> </div> </div> </div> <div class=\"col-sm-6 \" style=\"  border: 3px black solid; \"> <div class=\"Cards\" style= \"margin-left: 30px; \">  <div class=\"MobileNumber\" style=\"width: 556px; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Period: </span><span>01/04/2025 - 31/03/2026 </span></div> <div class=\"ApplicationNumber\" style=\"width: 556px; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Issue Date: </span><span>"+IssueDate+"</span></div> <div class=\"Address\" style=\"width: 556px; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Due Date: </span><span>"+DueDate+"</span></div> <div class=\"Avatar\" style=\"justify-content: flex-start; align-items: center; gap: 16px; display: inline-flex\"> <div class=\"Frame2610301\"></div> </div> </div> </div> </div> </div> <div class=\"container-fluid\"> <div class=\"row\"> <div class=\"col-sm-12 mt-4\" style=\"border: 3px black solid; \"> <div class=\"Cards\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 25px; font-family: Inter; font-weight: 600; line-height: 50px; word-wrap: break-word\">Service / Head Name Property Tax</div> </div> </div> </div> <div class=\"row\"> <div class=\"col-sm-12 mt-1 \" style=\"border: 1px black solid; \"> <div class=\"Cards\" style= \"gap: 8px; \"> <div class=\"row\"> <div class=\"col\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">Property Tax (2024-2025)</div> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">"+Amount+"</div> </div> <div class=\"col\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">Total Swatchata Tax</div> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">"+SAmount+"</div> </div> <div class=\"col\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">Late Fees</div> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">0</div> </div> <div class=\"col\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">Rebate</div> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">"+rebate+"</div> </div> </div> </div> </div> </div> <div class=\"row\"> <div class=\"col-sm-12  mt-1\" style=\"border: 1px black solid; \"> <div class=\"Cards\" style= \"gap: 8px; \"> <div class=\"row\"> <div class=\"col\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">Total Arrears</div> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">"+Amount+"</div> </div> <div class=\"col\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">RoundOff</div> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">0</div> </div> <div class=\"col\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">Total Tax</div> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\">"+Total+"</div> </div> <div class=\"col\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"></div> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"></div> </div> </div> </div> </div> </div> </div> <div class=\"container-fluid\"> <div class=\"row\"> <div class=\"col-sm-12 mt-4\"> <div class=\"Cards\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 25px; font-family: Inter; font-weight: 600; line-height: 50px; word-wrap: break-word;  text-align: center;\">Acknowledgment</div> </div> </div> </div> <div class=\"row\"> <div class=\"col-sm-7 \"> <div class=\"Cards\"  style= \"margin-left: 30px; \"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Owner Name: </span><span>"+OwnerName+"</span></div>  <div class=\"Address\" style=\"width: 556px; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Address: </span><span>"+Address+"-"+Ward+"</span></div> <div class=\"Avatar\" style=\"justify-content: flex-start; align-items: center; gap: 16px; display: inline-flex\"> <div class=\"Frame2610301\"></div> </div> </div> </div> <div class=\"col-sm-5 \"> <div class=\"Cards\" style= \"margin-left: 30px; \"> <div class=\"MobileNumber\" style=\"width: 556px; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Property ID: </span><span>"+PropertyId+"</span></div> <div class=\"MobileNumber\" style=\"width: 556px; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Due Payment: </span><span>"+Total+" </span></div> <div class=\"Avatar\" style=\"justify-content: flex-start; align-items: center; gap: 16px; display: inline-flex\"> <div class=\"Frame2610301\"></div> </div> </div> </div> </div> </div> <div class=\"container-fluid\"> <div class=\"row\"> <div class=\"col-sm-12 mt-4\"> <div class=\"Cards\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 25px; font-family: Inter; font-weight: 600; line-height: 50px; word-wrap: break-word;  text-align: right;\">Commissioner/EO</div> </div> </div> </div> </div> <div class=\"container-fluid\"> <div class=\"row\"> <div class=\"col-sm-12\"> <div class=\"ApplicationNameAndAddress\" style=\"align-self: stretch; color: black; font-size: 20px; font-family: Inter; font-weight: 500; line-height: 50px; word-wrap: break-word\"><span style=\" font-weight: bold; font-size: 22px;\">Note: </span></div> <div class=\"MobileNumber\" style=\" color: black; font-size: 20px; font-family: Inter; font-weight: 500;  word-wrap: break-word\"><span>1. Payment received by cheque/demand draft shall be subject to realization.</span></div> <div class=\"Address\" style=\"color: black; font-size: 20px; font-family: Inter; font-weight: 500; word-wrap: break-word\"><span>2. This document is not a proof of Property Ownership and regularization of unauthorized construction.</span></div> <div class=\"MobileNumber\" style=\"color: black; font-size: 20px; font-family: Inter; font-weight: 500;  word-wrap: break-word\"><span>3. This is a computer generated document, hence requires no signature.</span></div> <div class=\"MobileNumber\" style=\"color: black; font-size: 20px; font-family: Inter; font-weight: 500;  word-wrap: break-word\"><span>4. Assessment & Payment is subject to verifcation/Scrutiny by competitive authority.</span></div> </div> </div> </div>");
			if(counter==500) {
				counter = 0;
				count++;
				
				sb.append("</body></html>");
				
				Path fileName = Path.of(myProperty.getPdfPath() + Ward +"-"+count+ ".html");
				
				Files.writeString(fileName, sb.toString());
				
				System.out.println("###############################"+ Ward +"-"+count+".pdf###############################");
				System.out.println(logs.toString());
				System.out.println(fileName);
				
				logs = new StringBuilder();
				 sb = new StringBuilder();
				 sb.append("<html> <head> <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\"> <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js\"></script> <title>https://nagarsewa.uk.gov.in/</title> </head> <body>");
					
			}
		}
		
		sb.append("</body></html>");
		
		int last = count+1;
		
		Path fileName = Path.of(myProperty.getPdfPath() +Ward+"-"+last+ ".html");
		
		Files.writeString(fileName, sb.toString());
		
		System.out.println("###############################"+ Ward +"-"+last+".pdf###############################");
		System.out.println(logs.toString());
		System.out.println(fileName);
		
		logs = new StringBuilder();
	
		return "Your Bill se Generated Succesfully";
	}
	

}
