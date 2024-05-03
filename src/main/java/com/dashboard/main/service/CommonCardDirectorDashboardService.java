package com.dashboard.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dashboard.main.entity.CommonCardDirectorDashboard;
import com.dashboard.main.repository.CommonCardDirectorDashboardRepository;

@Service
public class CommonCardDirectorDashboardService {

	@Autowired
	CommonCardDirectorDashboardRepository commonCardDirectorDashboardRepository;

	public String CommonCardDataCreateService(CommonCardDirectorDashboard obj) {
		String financialYear = obj.getFinancialYear();
		CommonCardDirectorDashboard obj2 = new CommonCardDirectorDashboard();
		System.out.println(obj);

		if (financialYear != null) {

			if (financialYear.equals("")) {
				return "Please enter Financial Year";
			}

			obj2 = commonCardDirectorDashboardRepository.findByFinancialYear(financialYear);

			if (obj2 == null) {
				CommonCardDirectorDashboard savedUser = commonCardDirectorDashboardRepository.save(obj);
				if (savedUser.getId() != null) {
					return "success";
				} else {
					return "fail";
				}
			} else {
				obj2.setFinancialYear(obj.getFinancialYear());
				obj2.setMixed(obj.getMixed());
				obj2.setNonResidential(obj.getNonResidential());
				obj2.setPtBottom1(obj.getPtBottom1());
				obj2.setPtBottom2(obj.getPtBottom2());
				obj2.setPtTop1(obj.getPtTop1());
				obj2.setPtTop2(obj.getPtTop2());
				obj2.setPtTotal(obj.getPtTotal());
				obj2.setResidential(obj.getResidential());
				obj2.setTlBottom1(obj.getTlBottom1());
				obj2.setTlBottom2(obj.getTlBottom2());
				obj2.setTlTop1(obj.getTlTop1());
				obj2.setTlTop2(obj.getTlTop2());
				obj2.setTlTotal(obj.getTlTotal());
				obj2.setUcBottom1(obj.getUcBottom1());
				obj2.setUcBottom2(obj.getUcBottom2());
				obj2.setUcTop1(obj.getUcTop1());
				obj2.setUcTop2(obj.getUcTop2());
				obj2.setUcTotal(obj.getUcTotal());
				commonCardDirectorDashboardRepository.save(obj2);
				return "success";
			}
		} else {
			return "Please Enter Data";
		}
	}

	public List<CommonCardDirectorDashboard> CommonCardDataFetchService(CommonCardDirectorDashboard obj) {
		String financialYear = obj.getFinancialYear();

		List<CommonCardDirectorDashboard> obj2 = commonCardDirectorDashboardRepository
				.findByFinancialYearList(financialYear);

		return obj2;
	}
}
