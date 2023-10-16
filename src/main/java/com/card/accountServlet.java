package com.card;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/accountServlet")
public class accountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bank =request.getParameter("bank");
		String uName =request.getParameter("uName");
		String aNum =request.getParameter("aNum");
		String branch =request.getParameter("branch");
		String pNum =request.getParameter("pNum");
		
		
		boolean isTrue;
		
		isTrue = accountDBUtil.insertaccount( bank, uName, aNum, branch, pNum);
		
		if(isTrue == true) {
			RequestDispatcher dis =request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 =request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request, response);
			
		}
		
		
	}
	
	protected void doPost1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name3 = request.getParameter("uName");
		
		
		try {
			List<account> accountDetails = accountDBUtil.validate(name3);
			request.setAttribute("accountDetails",accountDetails);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("viewAccount.jsp");
		dis.forward(request, response);		
	}
	
	


}
