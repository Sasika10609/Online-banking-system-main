package com.card;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class accountDBUtil {
	
	public static List<account>  validate(String Uname){
		
		ArrayList<account> cu = new ArrayList<>();
		
		//create database connection
		
		String url = "jdbc:mysql://localhost:3306/cardandaccount";
		String user = "root";
		String pass ="lasitha";
		
		
		//validate
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);  
			Statement stmt = con.createStatement();
			
			String sql = "select * from acccount where user='"+Uname+"'"; 
			
			ResultSet rs = stmt.executeQuery(sql); 
			
			if(rs.next()) {
				
				
				String bank = rs.getString(1);
				String uName =rs.getString(2);
				String aNum =rs.getString(3);
				String branch =rs.getString(4);
				String pNum = rs.getString(5);
				
				account c = new account(bank,uName,aNum,branch,pNum);
				cu.add(c); 
			}
		}
		catch(Exception e) {
			
			e.printStackTrace();  
		}
		
		return cu;
		
	
	
	}
	
  public static boolean insertaccount(String bank, String uName, String aNum, String branch, String pNum) {
	  boolean isSuccess = false;
	  
	  //create db connection
	  
	  String url ="jdbc:mysql://localhost:3306/cardandaccount";
	  String user ="root";
	  String pass="lasitha";
	  
	  try {
		  
		  Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);  
			Statement stmt = con.createStatement();
			String sql ="insert into acccount values ('"+bank+"','"+uName+"','"+aNum+"','"+branch+"','"+pNum+"')"; 
		    int rs =stmt.executeUpdate(sql);
		    
		    if(rs >0) {
		    	isSuccess =true;
		    }
		    else {
		    	isSuccess =false;
		    }
		  
	  }
	  
	  catch (Exception e){
		  e.printStackTrace();
		  
	  }
	  
	  return isSuccess;
  }
  
  public static boolean updateAccount(String bank, String uName, String aNum, String branch, String pNum) {
	  boolean isSuccess = false;
	  
	  //create db connection
	  
	  String url ="jdbc:mysql://localhost:3306/cardandaccount";
	  String user ="root";
	  String pass="lasitha";
	  
	  try {
		  
		  Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);  
			Statement stmt = con.createStatement();
			String sql ="update acccount set bank='"+bank+"', user='"+uName+"', accountNum='"+aNum+"', branch='"+branch+"' where phone='"+pNum+"'"; 
		    int rs =stmt.executeUpdate(sql);
		    
		    if(rs >0) {
		    	isSuccess =true;
		    }
		    else {
		    	isSuccess =false;
		    }
		  
	  }
	  
	  catch (Exception e){
		  e.printStackTrace();
		  
	  }
	  
	  return isSuccess;
  }
  
  public static boolean deleteaccount(String uName) {
	  boolean isSuccess = false;
	  
	  //create db connection
	  
	  String url ="jdbc:mysql://localhost:3306/cardandaccount";
	  String user ="root";
	  String pass="lasitha";
	  
	  try {
		  
		  Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);  
			Statement stmt = con.createStatement();
			String sql ="DELETE FROM acccount WHERE accountNum='"+uName+"'"; 
		    int rs =stmt.executeUpdate(sql);
		    
		    if(rs >0) {
		    	isSuccess =true;
		    }
		    else {
		    	isSuccess =false;
		    }
		  
	  }
	  
	  catch (Exception e){
		  e.printStackTrace();
		  
	  }
	  
	  return isSuccess;
  }
	

}
