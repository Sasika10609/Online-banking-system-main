<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Delete Entry | Olympus</title>
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
		String loanNo = request.getParameter("lid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String appamount = request.getParameter("appamount");
		String type= request.getParameter("type");
		String reason= request.getParameter("reason");
	%>

    <div class="pro">
        <div class="pro1">
          <form action="deletel" method="post">
            <label id="lb">Delete Transaction</label><br><br><br>
            <label for="lid" id="t1">Loan Number</label><br>
            <input type="text" id="tb1" name="lid" value="<%= loanNo%>" readonly><br><br>
            <label for="name" id="t1">Customer Name</label><br>
            <input type="text" id="tb1" name="name" value="<%= name%>"readonly><br><br>
            <label for="email" id="t1">Email</label><br>
            <input type="email" id="tb1" name="email" value="<%= email%>"readonly><br><br>
            <label for="appamount" id="t1">Approximate Amount</label><br>
            <input type="text" id="tb1" name="appAmount" value="<%= appamount%>"readonly><br><br>
            <label for="type" id="t1">Type</label><br>
            <input type="text" id="tb1" name="type" value="<%=type%>"readonly><br><br>
            <label for="reason" id="t1">Reason</label><br>
            <input type="text" id="tb1" name="reason" value="<%= reason%>"readonly><br><br>
            <label id="t1">Are you sure want to delete this entry ?</label><br>
            <input type="submit" name="submit" value="Delete">
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