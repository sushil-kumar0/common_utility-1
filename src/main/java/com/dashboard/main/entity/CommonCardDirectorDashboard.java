package com.dashboard.main.entity;

import java.io.Serializable;
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

@Table(name="CommonCard_DirectorDashboard")
public class CommonCardDirectorDashboard implements Serializable  {
	private static final long serialVersionUID = 121231972383281632L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String FinancialYear;
	private String PtTotal;
	private String TlTotal;
	private String UcTotal;
	private String TlTop1;
	private String TlTop2;
	private String TlBottom1;
	private String TlBottom2;
	private String PtTop1;
	private String PtTop2;
	private String PtBottom1;
	private String PtBottom2;
	private String UcTop1;
	private String UcTop2;
	private String UcBottom1;
	private String UcBottom2;
	private String Residential;
	private String NonResidential;
	private String Mixed;
}
