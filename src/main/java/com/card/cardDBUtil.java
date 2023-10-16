package com.card;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class cardDBUtil {
	
	public static List<card>  validate(String UName){
		
		ArrayList<card> cu = new ArrayList<>();
		
		//create database connection
		
		String url = "jdbc:mysql://localhost:3306/cardandaccount";
		String user = "root";
		String pass ="lasitha";
		
		
		//validate
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);  
			Statement stmt = con.createStatement();
			
			String sql = "select * from card where CardHolderName='"+UName+"'"; 
			
			ResultSet rs = stmt.executeQuery(sql); 
			
			if(rs.next()) {
				
				
				String type = rs.getString(1);
				String Name =rs.getString(2);
				String cNum =rs.getString(3);
				String eDate =rs.getString(4);
				String cvv = rs.getString(5);
				
				card c = new card(type,Name,cNum,eDate,cvv);
				cu.add(c); 
			}
		}
		catch(Exception e) {
			
			e.printStackTrace();  
		}
		
		return cu;
		
	
	
	}
	
  public static boolean insertcard(String type, String cName, String cNum, String eDate, String cvv) {
	  boolean isSuccess = false;
	  
	  //create db connection
	  
	  String url ="jdbc:mysql://localhost:3306/cardandaccount";
	  String user ="root";
	  String pass="lasitha";
	  
	  try {
		  
		  Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);  
			Statement stmt = con.createStatement();
			String sql ="insert into card values ('"+type+"','"+cName+"','"+cNum+"','"+eDate+"','"+cvv+"')"; 
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
  
  public static boolean updateCard(String type, String cName, String cNum, String eDate, String cvv) {
	  boolean isSuccess = false;
	  
	  //create db connection
	  
	  String url ="jdbc:mysql://localhost:3306/cardandaccount";
	  String user ="root";
	  String pass="lasitha";
	  
	  try {
		  
		  Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);  
			Statement stmt = con.createStatement();
			String sql ="update card set CardType='"+type+"', CardHolderName='"+cName+"', Date='"+eDate+"', Cvv='"+cvv+"' where CardNumber='"+cNum+"'"; 
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
  
  public static boolean deletecard(String cNum) {
	  boolean isSuccess = false;
	  
	  //create db connection
	  
	  String url ="jdbc:mysql://localhost:3306/cardandaccount";
	  String user ="root";
	  String pass="lasitha";
	  
	  try {
		  
		  Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);  
			Statement stmt = con.createStatement();
			String sql ="DELETE FROM card WHERE CardNumber='"+cNum+"'"; 
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
