package com.dashboard.main.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dashboard.main.entity.OtherServicesDirectorDashboard;
import com.dashboard.main.repository.OtherServicesDirectorDashboardRepository;

@Service
public class OtherServicesDirectorDashboardService {

	@Autowired
	OtherServicesDirectorDashboardRepository otherServicesDirectorDashboardRepository;

	public String OtherServicesDataCreate(OtherServicesDirectorDashboard obj) {
		OtherServicesDirectorDashboard obj2 = otherServicesDirectorDashboardRepository
				.findOtherServicesData(obj.getMonth(), obj.getYear(), obj.getUlbName());
		LocalDate date = LocalDate.now(); 
		
		if (obj2 != null) {
			if (obj.getExtra().equals("SBMU")) {
				obj2.setD2dWasteCollection(obj.getD2dWasteCollection());
				obj2.setD2dWasteSegregation(obj.getD2dWasteSegregation());
				obj2.setCtPt(obj.getCtPt());
				obj2.setPublicUrinal(obj.getPublicUrinal());
				obj2.setIhhl(obj.getIhhl());
				obj2.setOdfStatus(obj.getOdfStatus());
				obj2.setGfcStarRating(obj.getGfcStarRating());
				obj2.setPlasticCompactor(obj.getPlasticCompactor());
				obj2.setMrfCentres(obj.getMrfCentres());
				obj2.setSupBan(obj.getSupBan());
				obj2.setSupChallan(obj.getSupChallan());
				obj2.setGisMap(obj.getGisMap());
				obj2.setAlAsChallan(obj.getAlAsChallan());
				obj2.setAlAsFineCollected(obj.getAlAsFineCollected());
				obj2.setBinFreeCityNotified(obj.getBinFreeCityNotified());
				obj2.setPlasticChallan(obj.getPlasticChallan());
				obj2.setBwgIdentified(obj.getBwgIdentified());
				obj2.setBwgOnlineComposting(obj.getBwgOnlineComposting());
				obj2.setSwmFundReleased(obj.getSwmFundReleased());
				obj2.setSwmFundUtilised(obj.getSwmFundUtilised());
				obj2.setExtra(obj.getExtra());
				obj2.setCreateDate(date.toString());
				
				obj2.setD2dWasteCollectionTarget(obj.getD2dWasteCollectionTarget());
				obj2.setD2dWasteSegregationTarget(obj.getD2dWasteSegregationTarget());
				obj2.setCtPtTarget(obj.getCtPtTarget());
				obj2.setPublicUrinalTarget(obj.getPublicUrinalTarget());
				obj2.setIhhlTarget(obj.getIhhlTarget());
				obj2.setOdfStatusTarget(obj.getOdfStatusTarget());
				obj2.setPlasticCompactorTarget(obj.getPlasticCompactorTarget());
				obj2.setMrfCentresTarget(obj.getMrfCentresTarget());
				obj2.setSupBanTarget(obj.getSupBanTarget());
				obj2.setSupChallanTarget(obj.getSupChallanTarget());
				obj2.setGisMapTarget(obj.getGisMapTarget());
				obj2.setAlAsChallanTarget(obj.getAlAsChallanTarget());
				obj2.setAlAsFineCollectedTarget(obj.getAlAsFineCollectedTarget());
				obj2.setBinFreeCityNotifiedTarget(obj.getBinFreeCityNotifiedTarget());
				obj2.setPlasticChallanTarget(obj.getPlasticChallanTarget());
				obj2.setBwgIdentifiedTarget(obj.getBwgIdentifiedTarget());
				obj2.setBwgOnlineCompostingTarget(obj.getBwgOnlineCompostingTarget());
				obj2.setSwmFundReleasedTarget(obj.getSwmFundReleasedTarget());
				obj2.setSwmFundUtilisedTarget(obj.getSwmFundUtilisedTarget());
				
				obj2.setAllocatedFundSBM(obj.getAllocatedFundSBM());
				obj2.setReleaseFundSBM(obj.getReleaseFundSBM());
				
				otherServicesDirectorDashboardRepository.save(obj2);
				return "success";

			} else if (obj.getExtra().equals("DAYNULM")) {
				obj2.setSepI(obj.getSepI());
				obj2.setShgBl(obj.getShgBl());
				obj2.setShgFormation(obj.getShgFormation());
				obj2.setShgRevolvingFund(obj.getShgRevolvingFund());
				obj2.setAlfFormation(obj.getAlfFormation());
				obj2.setAlfRevolvingFund(obj.getAlfRevolvingFund());
				obj2.setPmfmeShg(obj.getPmfmeShg());
				obj2.setPmsvaNidhi(obj.getPmsvaNidhi());
				obj2.setExtra(obj.getExtra());
				obj2.setCreateDate(date.toString());
				obj2.setSepITarget(obj.getSepITarget());
				obj2.setShgBlTarget(obj.getShgBlTarget());
				obj2.setShgFormationTarget(obj.getShgFormationTarget());
				obj2.setShgRevolvingFundTarget(obj.getShgRevolvingFundTarget());
				obj2.setAlfFormationTarget(obj.getAlfFormationTarget());
				obj2.setAlfRevolvingFundTarget(obj.getAlfRevolvingFundTarget());
				obj2.setPmfmeShgTarget(obj.getPmfmeShgTarget());
				obj2.setPmsvaNidhiTarget(obj.getPmsvaNidhiTarget());
				obj2.setAllocatedFundDayNulm(obj.getAllocatedFundDayNulm());
				obj2.setReleaseFundDayNulm(obj.getReleaseFundDayNulm());
				
				otherServicesDirectorDashboardRepository.save(obj2);
				return "success";

			} else if (obj.getExtra().equals("PMAYHFA")) {
				obj2.setSelfBlcAccCount(obj.getSelfBlcAccCount());
				obj2.setProgressBlcAccCount(obj.getProgressBlcAccCount());
				obj2.setCompleteBlcAccCount(obj.getCompleteBlcAccCount());
				obj2.setExtra(obj.getExtra());
				obj2.setCreateDate(date.toString());
				obj2.setSelfBlcAccCountTarget(obj.getSelfBlcAccCountTarget());
				obj2.setProgressBlcAccCountTarget(obj.getProgressBlcAccCountTarget());
				obj2.setCompleteBlcAccCountTarget(obj.getCompleteBlcAccCountTarget());
				obj2.setAllocatedFundPmayHfa(obj.getAllocatedFundPmayHfa());
				obj2.setReleaseFundPmayHfa(obj.getReleaseFundPmayHfa());
				otherServicesDirectorDashboardRepository.save(obj2);
				return "success";

			} else if (obj.getExtra().equals("AMRUT")) {
				obj2.setGisMasterPlan2041(obj.getGisMasterPlan2041());
				obj2.setWaterSupply(obj.getWaterSupply());
				obj2.setSewerage(obj.getSewerage());
				obj2.setDrainage(obj.getDrainage());
				obj2.setParks(obj.getParks());
				obj2.setExtra(obj.getExtra());
				obj2.setCreateDate(date.toString());
				obj2.setGisMasterPlan2041Target(obj.getGisMasterPlan2041Target());
				obj2.setWaterSupplyTarget(obj.getWaterSupplyTarget());
				obj2.setSewerageTarget(obj.getSewerageTarget());
				obj2.setDrainageTarget(obj.getDrainageTarget());
				obj2.setParksTarget(obj.getParksTarget());
				obj2.setAllocatedFundAmrut(obj.getAllocatedFundAmrut());
				obj2.setReleaseFundAmrut(obj.getReleaseFundAmrut());
				otherServicesDirectorDashboardRepository.save(obj2);
				return "success";

			} else if(obj.getExtra().equals("COMMON")) {
				obj2.setDistrictName(obj.getDistrictName());
				obj2.setUlbPopulation(obj.getUlbPopulation());
				obj2.setUlbName(obj.getUlbName());
				obj2.setTotalWard(obj.getTotalWard());
				obj2.setTotalArea(obj.getTotalArea());
				obj2.setExtra(obj.getExtra());
				obj2.setCreateDate(date.toString());
				otherServicesDirectorDashboardRepository.save(obj2);
				return "success";
				
			}

		} else {
			obj.setCreateDate(date.toString());
			otherServicesDirectorDashboardRepository.save(obj);
			return "success";
		}

		return "fail";
	}

	public List<OtherServicesDirectorDashboard>  OtherServicesDatafetch(OtherServicesDirectorDashboard obj) {
		String month = obj.getMonth();
		String year = obj.getYear();
		String ulbName = obj.getUlbName();
		if (month != null && year != null && ulbName != null) {
			List<OtherServicesDirectorDashboard>  result = otherServicesDirectorDashboardRepository.findOtherServicesDataList(month, year, ulbName);
			return result;
		}else {
			return null;
		}

	}
}
