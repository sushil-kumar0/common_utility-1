package com.dashboard.main.repository;

import java.util.List;
import java.util.Map;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.dashboard.main.entity.TempDb;

@Repository
public interface TempDbRepository extends JpaRepository<TempDb, Long> {

	@Query(value = "SELECT amount_paid,createdtime FROM temp_db WHERE tenantid='Dehradun'", nativeQuery = true)
	List<String>  findTemp();
	
	@Query(value = "SELECT amount_paid,createdtime FROM temp_db WHERE tenantid=?1", nativeQuery = true)
	List<String>  findTempDynamic(String tenentId);
}
