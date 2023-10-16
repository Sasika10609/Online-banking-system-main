package com.card;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





@WebServlet("/cardServlet")
public class cardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//catching the parameters fetched from the form
		String type =request.getParameter("type");
		String cName =request.getParameter("cName");
		String cNum =request.getParameter("cNum");
		String eDate =request.getParameter("eDate");
		String cvv =request.getParameter("cvv");
		
		
		boolean isTrue;
		
		isTrue = cardDBUtil.insertcard(type, cName, cNum, eDate, cvv);
		
		//redirecting to a another location 
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
		
		String name3 = request.getParameter("cName");
		
		
		try {
			List<card> cardDetails = cardDBUtil.validate(name3);
			request.setAttribute("cardDetails",cardDetails);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("viewCard.jsp");
		dis.forward(request, response);		
	}
	
	

}
