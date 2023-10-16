package com.card;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateaccount")
public class updateaccount extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bank1 = request.getParameter("bank");
		String uName1 = request.getParameter("uName");
		String aNum1 = request.getParameter("aNum");
		String branch1 = request.getParameter("branch");
		String pNum1 = request.getParameter("pNum");
		
		boolean isTrue;
		
		isTrue = accountDBUtil.updateAccount(bank1, uName1, aNum1, branch1, pNum1);
		
		if(isTrue == true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("success.jsp");
			dis1.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}	
		
		
		
		
	}


