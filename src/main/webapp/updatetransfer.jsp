<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Update Entry | Olympus</title>
    <link rel="stylesheet" type="text/css" href="css/udtrans.css">
  </head>
    <header>
      <img src="img/logo.png" width="100px" id="p1">
      <div class="tx">
        <ul>
          <a href="useracc.jsp"><li>Dashboard</li></a>
          <a href="createtransfer.jsp"><li>Fund Transfer</li></a>
          <a href="#"><li>Accounts & Cards</li></a>
          <a href="#"><li>Loan Request</li></a>
          <a href="#"><li>Contact us</li></a>
        </ul>
      </div>
      <div class="logo1">
        <a href="Home.jsp"><img src="img/power.png" width="50px" id="pwr"></a>
       </div>
    </header>

  <body>

    <%
		String id1 = request.getParameter("tid");
		String sender1 = request.getParameter("cid");
		String amount1 = request.getParameter("amount");
		String type1 = request.getParameter("type");
		String reciever1 = request.getParameter("recieve");
		String reff1 = request.getParameter("reff");	
	%>

    <div class="pro">
        <div class="pro1">
          <form action="updatet" method="post">
            <label id="lb">Update Transaction</label><br><br><br>
            <label for="tid" id="t1">Transaction ID</label><br>
            <input type="text" id="tb1" name="type" value="<%= id1%>"readonly><br><br>
            <label for="cid" id="t1">Sender</label><br>
            <select>
            <option id="tb1"><%= sender1%></option>
            </select><br><br>
            <label for="amount" id="t1">Amount</label><br>
            <input type="text" id="tb1" name="amount" value="<%= amount1%>"readonly><br><br>
            <label for="type" id="t1">Type</label><br>
            <select>
            <option id="tb1"><%= type1%></option>
            </select><br><br>
            <label for="recieve" id="t1">Reciever</label><br>
            <input type="text" id="tb1" name="recieve" value="<%= reciever1%>"readonly><br><br>
            <label for="reff" id="t1">Refferance</label><br>
            <input type="text" id="tb1" name="reff" value="<%= reff1%>" ><br><br>
            <input type="submit" name="submit" value="Update" id="btn1">
            </form>
              </div>
            </form>
        </div>
    </div>   
    <br><br>
    <footer>
        <h1 id="ft">Call for assistance  081-22234467</h1>
    </footer>

  </body>
</html>