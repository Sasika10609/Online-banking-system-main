package com.card;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/logincard")
public class logincard extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public logincard() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String uname = request.getParameter("user");
		
		try {
			List<card> ucard = cardDBUtil.validate(uname);
			request.setAttribute("ucard",ucard);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("viewCard.jsp");
		dis.forward(request, response);		
	}

}
