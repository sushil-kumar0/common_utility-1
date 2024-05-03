package com.dashboard.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.dashboard.main.entity.UserDetails;

public interface LoginDirectorDashboardRepository extends JpaRepository<UserDetails, Long>{

	@Query(value = "SELECT COUNT(id) FROM user_details WHERE user_name = ?1 AND password = ?2 AND service = ?3", nativeQuery = true)
	int findByUserDetails(String userName, String password, String service);

}
