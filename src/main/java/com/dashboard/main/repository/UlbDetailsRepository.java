package com.dashboard.main.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.dashboard.main.entity.OtherServicesDirectorDashboard;
import com.dashboard.main.entity.UlbDetails;
@Repository
public interface UlbDetailsRepository extends JpaRepository<UlbDetails, Long>  {

	@Query(value = "SELECT * FROM ulb_details", nativeQuery = true)
	 List<UlbDetails> findAllUlbDetails();
}

