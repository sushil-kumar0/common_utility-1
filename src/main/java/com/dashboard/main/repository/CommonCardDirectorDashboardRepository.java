package com.dashboard.main.repository;

import org.springframework.stereotype.Repository;
import com.dashboard.main.entity.CommonCardDirectorDashboard;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

@Repository
public interface CommonCardDirectorDashboardRepository extends JpaRepository<CommonCardDirectorDashboard, Long> {

	@Query(value = "SELECT * FROM common_card_director_dashboard WHERE financial_year = ?1", nativeQuery = true)
	List<CommonCardDirectorDashboard> findByFinancialYearList(String financialYear);
	
	@Query(value = "SELECT * FROM common_card_director_dashboard WHERE financial_year = ?1", nativeQuery = true)
	CommonCardDirectorDashboard findByFinancialYear(String financialYear);
	
	
}
