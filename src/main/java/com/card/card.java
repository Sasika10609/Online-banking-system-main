package com.card;

public class card {
   private String type;
   private String cName;
   private String cNum;
   private String eDate;
   private String cvv;
   
public card(String type, String cName, String cNum, String eDate, String cvv) {
	
	this.type = type;
	this.cName = cName;
	this.cNum = cNum;
	this.eDate = eDate;
	this.cvv = cvv;
}

public String getType() {
	return type;
}



public String getcName() {
	return cName;
}



public String getcNum() {
	return cNum;
}



public String geteDate() {
	return eDate;
}



public String getCvv() {
	return cvv;
}

 
   
   
}
