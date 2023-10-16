package pack1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateloan")
public class updateloan extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public updateloan() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String loanNo = request.getParameter("lid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String appAmount = request.getParameter("appamount");
		String type = request.getParameter("type");
		String reason = request.getParameter("reason");
		
		boolean isTrue;
		
		isTrue = loanDButil.updateloanreq(loanNo, name, email, appAmount, type, reason);
		
		if(isTrue == true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("success.jsp");
			dis1.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
