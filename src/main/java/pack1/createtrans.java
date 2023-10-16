package pack1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/createtrans")
public class createtrans extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public createtrans() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sender1 = request.getParameter("send1");
		String amount1 = request.getParameter("amt");
		String type1 = request.getParameter("send");
		String reciever1 = request.getParameter("rec");
		String reff1 = request.getParameter("ref");	
		
		boolean isTrue;
		
		isTrue = functions.inserttrans(sender1, amount1, type1, reciever1, reff1);
		
		if(isTrue == false) {
			RequestDispatcher dis = request.getRequestDispatcher("createtransfer.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
