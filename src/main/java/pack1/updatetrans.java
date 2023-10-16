package pack1;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updatetrans")
public class updatetrans extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public updatetrans() {
        super();

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id04 = request.getParameter("type");
	
		String reff4 = request.getParameter("reff");
		
		boolean isTrue;
		
		isTrue = functions.updatetransaction(id04,reff4);
		
		if(isTrue == true) {
			List<transfer> tranz = functions.gettransac(id04);
			request.setAttribute("tranz", tranz);
			
			RequestDispatcher dis1 = request.getRequestDispatcher("dashboardtr.jsp");
			dis1.forward(request, response);
		}
		else {
			List<transfer> tranz = functions.gettransac(id04);
			request.setAttribute("tranz", tranz);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
