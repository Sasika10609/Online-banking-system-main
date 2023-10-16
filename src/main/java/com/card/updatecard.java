package com.card;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.card.cardDBUtil;

@WebServlet("/updatecard")
public class updatecard extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public updatecard() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String type1 = request.getParameter("type");
		String name1 = request.getParameter("cName");
		String number1 = request.getParameter("cNum");
		String date1 = request.getParameter("eDate");
		String cvv1 = request.getParameter("cvv");
		
		boolean isTrue;
		
		isTrue = cardDBUtil.updateCard(type1, name1, number1, date1, cvv1);
		
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
