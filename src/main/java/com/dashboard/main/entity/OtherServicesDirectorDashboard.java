package com.dashboard.main.entity;

import java.sql.Timestamp;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString

@Table(name="OtherServices_DirectorDashboard")
public class OtherServicesDirectorDashboard {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String DistrictName;
	private String UlbName;
	private String Year;
	private String Month;
	private String TotalWard;
	private String TotalArea;
	private String UlbPopulation;
	private String CreateDate;
	private String extra;
	
	//SBM-U
	private String D2dWasteCollection;
	private String D2dWasteSegregation;
	private String CtPt;
	private String PublicUrinal;
	private String Ihhl;
	private String OdfStatus;
	private String GfcStarRating;
	private String PlasticCompactor;
	private String MrfCentres;
	private String SupBan;
	private String SupChallan;
	private String GisMap;
	private String AlAsChallan;
	private String AlAsFineCollected;
	private String BinFreeCityNotified;
	private String PlasticChallan;
	private String BwgIdentified;
	private String BwgOnlineComposting;
	private String SwmFundReleased;
	private String SwmFundUtilised;
	private int D2dWasteCollectionTarget;
	private int D2dWasteSegregationTarget;
	private int CtPtTarget;
	private int PublicUrinalTarget;
	private int IhhlTarget;
	private int OdfStatusTarget;
	private int PlasticCompactorTarget;
	private int MrfCentresTarget;
	private int SupBanTarget;
	private int SupChallanTarget;
	private int GisMapTarget;
	private int AlAsChallanTarget;
	private int AlAsFineCollectedTarget;
	private int BinFreeCityNotifiedTarget;
	private int PlasticChallanTarget;
	private int BwgIdentifiedTarget;
	private int BwgOnlineCompostingTarget;
	private int SwmFundReleasedTarget;
	private int SwmFundUtilisedTarget;
	private int AllocatedFundSBM;
	private int ReleaseFundSBM;
	
	//DAY-NULM
	private String SepI;
	private String ShgBl;
	private String ShgFormation;
	private String ShgRevolvingFund;
	private String AlfFormation;
	private String AlfRevolvingFund;
	private String PmfmeShg;
	private String PmsvaNidhi;
	private int SepITarget;
	private int ShgBlTarget;
	private int ShgFormationTarget;
	private int ShgRevolvingFundTarget;
	private int AlfFormationTarget;
	private int AlfRevolvingFundTarget;
	private int PmfmeShgTarget;
	private int PmsvaNidhiTarget;
	private int AllocatedFundDayNulm;
	private int ReleaseFundDayNulm;
	
	//PMAY-HFA
	private String SelfBlcAccCount;
	private String ProgressBlcAccCount;
	private String CompleteBlcAccCount;
	private int SelfBlcAccCountTarget;
	private int ProgressBlcAccCountTarget;
	private int CompleteBlcAccCountTarget;
	private int AllocatedFundPmayHfa;
	private int ReleaseFundPmayHfa;
	
	//AMRUT
	private String GisMasterPlan2041;
	private String WaterSupply;
	private String Sewerage;
	private String Drainage;
	private String Parks;
	private String WaterSupply2;
	private String Parks2;
	private String WaterBodies2;
	
	private int GisMasterPlan2041Target;
	private int WaterSupplyTarget;
	private int SewerageTarget;
	private int DrainageTarget;
	private int ParksTarget;
	private int WaterSupply2Target;
	private int Parks2Target;
	private int WaterBodies2Target;
	
	private int GisMasterPlan2041Physical;
	private int WaterSupplyPhysical;
	private int SeweragePhysical;
	private int DrainagePhysical;
	private int ParksPhysical;
	private int WaterSupply2Physical;
	private int Parks2Physical;
	private int WaterBodies2Physical;
	
	private int GisMasterPlan2041Financial;
	private int WaterSupplyFinancial;
	private int SewerageFinancial;
	private int DrainageFinancial;
	private int ParksFinancial;
	private int WaterSupply2Financial;
	private int Parks2Financial;
	private int WaterBodies2Financial;
	 
	private int AllocatedFundAmrut;
	private int ReleaseFundAmrut;
	
	
}
