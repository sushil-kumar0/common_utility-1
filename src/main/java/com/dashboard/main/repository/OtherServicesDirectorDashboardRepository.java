package com.dashboard.main.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.dashboard.main.entity.OtherServicesDirectorDashboard;
@Repository
public interface OtherServicesDirectorDashboardRepository extends JpaRepository<OtherServicesDirectorDashboard, Long>  {

	@Query(value = "SELECT * FROM other_services_director_dashboard WHERE month = ?1 AND year = ?2 AND ulb_name = ?3", nativeQuery = true)
	OtherServicesDirectorDashboard  findOtherServicesData(String month ,String year ,String ulb_name);
	
	
	@Query(value = "SELECT * FROM other_services_director_dashboard WHERE month = ?1 AND year = ?2 AND ulb_name = ?3", nativeQuery = true)
	List<OtherServicesDirectorDashboard>  findOtherServicesDataList(String month ,String year ,String ulb_name);
}

