package pack1;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class loanDButil {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	

    public static boolean insertloanreq(String name, String email, String appAmount, String type, String reason) {
		
    	boolean isSuccess = false;
    	
    	try {
    		con = DB.getConnection();
    		stmt = con.createStatement();
    		String sql2 = "insert into loan values(0, '"+name+"', '"+email+"', '"+appAmount+"', '"+type+"', '"+reason+"')";
    		int rs = stmt.executeUpdate(sql2);
    		
    		if(rs < 0) {
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
    
    public static boolean updateloanreq(String loanNo, String name, String email, String appAmount, String type,String reason) {
    	
    	
    	boolean isSuccess = false;
    	try{
    		con = DB.getConnection();
    		stmt = con.createStatement();
    		String sql2 ="update loan set name='"+name+"', email='"+email+"', appamount='"+appAmount+"', type='"+type+"' where loanNo='"+loanNo+"'";
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
	
 public static boolean deleteloanreq(String loanid) {
    	
    	
    	boolean isSuccess = false;
    	try{
    		con = DB.getConnection();
    		stmt = con.createStatement();
    		String sql2 ="DELETE FROM loan WHERE loanNo='"+loanid+"'";
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
	
	
}
