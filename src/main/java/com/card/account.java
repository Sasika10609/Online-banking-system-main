package com.card;

public class account {
	   private String bank;
	   private String uName;
	   private String aNum;
	   private String branch;
	   private String pNum;
	   
	   
	public account(String bank, String uName, String aNum, String branch, String pNum) {
		
		this.bank = bank;
		this.uName = uName;
		this.aNum = aNum;
		this.branch = branch;
		this.pNum = pNum;
	}


	public String getBank() {
		return bank;
	}



	public String getuName() {
		return uName;
	}


	public String getaNum() {
		return aNum;
	}


	public String getBranch() {
		return branch;
	}


	public String getpNum() {
		return pNum;
	}



}
