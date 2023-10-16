package pack1;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import logpack.custom;
import pack1.DB;

public class functions {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
    public static List<custom> validate(String name1, String password1){
    	
    	ArrayList<custom> cus = new ArrayList<custom>();
    	
    	try {
    		
    		con = DB.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from mytable where name='"+name1+"' and password='"+password1+"'";
    		rs = stmt.executeQuery(sql);
    		
    		if(rs.next()) {
    			int id2 = rs.getInt(1);
    			String name2 = rs.getString(2);
    			String password2 = rs.getString(3);
    			String phone2 = rs.getString(4);
    			String email2 = rs.getString(5);
    			
    			custom c = new custom(id2,name2,password2,phone2,email2);
    			cus.add(c);
    		}
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return cus;
    }
    
    public static boolean insertCustom(String name3, String password3, String phone3, String email3) {
		
    	boolean isSuccess = false;
    	
    	try {
    		con = DB.getConnection();
    		stmt = con.createStatement();
    		String sql2 = "insert into mytable values(0, '"+name3+"', '"+password3+"', '"+phone3+"', '"+email3+"')";
    		int rs = stmt.executeUpdate(sql2);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e){
    		e.printStackTrace();
    	}
    	
    	return false;
    	
    }
    
    public static boolean updateCustomer(String id5, String name5, String password5, String phone5, String email5) {
    	
    	
    	boolean isSuccess = false;
    	try{
    		con = DB.getConnection();
    		stmt = con.createStatement();
    		String sql2 ="update mytable set name='"+name5+"', password='"+password5+"', phone='"+phone5+"', email='"+email5+"' where id='"+id5+"'";
    		int rs = stmt.executeUpdate(sql2);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
	
public static List<custom> getCustomerDetails(String ID) {

	int conID = Integer.parseInt(ID);
	ArrayList<custom> cus = new ArrayList<custom>();
	
	try {
		
		con = DB.getConnection();
		stmt = con.createStatement();
		String sql3 = "select * from mytable where id = '"+conID+"'";
		rs = stmt.executeQuery(sql3);
		
		while(rs.next()) {
			int id4 = rs.getInt(1);
			String name4 = rs.getString(2);
			String password4 = rs.getString(3);
			String phone4 = rs.getString(4);
			String email4 = rs.getString(5);
			
			custom c = new custom(id4,name4,password4,phone4,email4);
			cus.add(c);
		}
				
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return cus;
}    
    
 public static boolean deleteCustomer(String id5) {
    	
    	
    	boolean isSuccess = false;
    	try{
    		con = DB.getConnection();
    		stmt = con.createStatement();
    		String sql2 ="DELETE FROM mytable WHERE id='"+id5+"' ";
    		int rs = stmt.executeUpdate(sql2);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
 
 public static boolean inserttrans(String sender2, String amount2, String type2, String reciever2, String reff2) {
		
 	boolean isSuccess = false;
 	
 	try {
 		con = DB.getConnection();
 		stmt = con.createStatement();
 		String sql3 = "insert into funds values(0, '"+sender2+"', '"+amount2+"', '"+type2+"', '"+reciever2+"', '"+reff2+"')";
 		int rs = stmt.executeUpdate(sql3);
 		
 		if(rs > 0) {
 			isSuccess = true;
 		}
 		else {
 			isSuccess = false;
 		}
 		
 	}
 	catch(Exception e){
 		e.printStackTrace();
 	}
 	
 	return false;
 	
 }
 
 public static boolean deletetrans(String id7) {
 	
 	
 	boolean isSuccess = false;
 	try{
 		con = DB.getConnection();
 		stmt = con.createStatement();
 		String sql2 ="DELETE FROM funds WHERE transID='"+id7+"' ";
 		int rs = stmt.executeUpdate(sql2);
 		
 		if(rs > 0) {
 			isSuccess = true;
 		}
 		else {
 			isSuccess = false;
 		}
 	}
 	catch(Exception e) {
 		e.printStackTrace();
 	}
 	
 	return isSuccess;
 }

 public static boolean updatetransaction(String idx,  String reff) {
 	
 	
 	boolean isSuccess = false;
 	try{
 		con = DB.getConnection();
 		stmt = con.createStatement();
 		String sql4 ="update funds set reff='"+reff+"' where transID='"+idx+"'";
 		int rs = stmt.executeUpdate(sql4);
 		
 		if(rs > 0) {
 			isSuccess = true;
 		}
 		else {
 			isSuccess = false;
 		}
 	}
 	catch(Exception e) {
 		e.printStackTrace();
 	}
 	
 	return isSuccess;
 }
 
 //limited
 public static List<transfer> gettransac(String ID) {

		int conID = Integer.parseInt(ID);
		ArrayList<transfer> tra = new ArrayList<transfer>();
		
		try {
			
			con = DB.getConnection();
			stmt = con.createStatement();
			String sql3 = "select * from funds where id = '"+conID+"'";
			rs = stmt.executeQuery(sql3);
			
			while(rs.next()) {
				int idx = rs.getInt(1);
				String senderx = rs.getString(2);
				String typex = rs.getString(3);
				String amountx = rs.getString(4);
				String recieverx = rs.getString(5);
				String reffx = rs.getString(5);
				
				transfer t = new transfer(idx, senderx, typex, amountx, recieverx, reffx);
				tra.add(t);
			}
					
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return tra;
	}
 
}
