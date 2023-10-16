<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Card</title>
    <link rel="stylesheet" type="text/css" href="css/cardupdate.css">
  </head>
    <header>
      <img src="img/logo.png" width="100px" id="p1">
      <div class="tx">
        <ul>
          <a href="#"><li>Dashboard</li></a>
          <a href="#"><li>Fund Transfer</li></a>
          <a href="#"><li>Accounts & Cards</li></a>
          <a href="#"><li>Loan Request</li></a>
          <a href="#"><li>Contact us</li></a>
        </ul>
      </div>
      <div class="logo1">
        <a href="#"><img src="img/power.png" width="50px" id="pwr"></a>
       </div>
    </header>

  <body>
    <%
			String bank = request.getParameter("bank");
			String uName = request.getParameter("uName");		       
			String aNum = request.getParameter("aNum");			
			String branch = request.getParameter("branch");		
			String pNum = request.getParameter("pNum");		
		%>

    <div class="pro">
        <div class="pro1">
          <form action ="upaccount" method="post">
            <label for="bank" id="t1">Bank Name</label><br>
            <input type="text" name="bank" value="<%=bank%>" id="tb1"><br><br>
            <label for="uName" id="t1">User Name</label><br>
            <input type="text" name="uName" value="<%=uName%>" id="tb1"><br><br>
            <label for="aNum" id="t1">Account Number</label><br>
            <input type="text" name="aNum" value="<%=aNum%>" id="tb1"><br><br>
            <label for="branch" id="t1">Branch</label><br>
            <input type ="text" name ="branch" value="<%=branch%>" id="tb1"><br><br>
            <label for="pNum" id="t1">Phone Number </label><br>
            <input type="text" name="pNum" value="<%=pNum%>" readonly id="tb1"><br><br>
            <input type="submit" name="submit" value="Update Card" id="btn1">
             </form>	
        </div>
    </div>   
    <br><br>
    <footer>
        <h1 id="ft">Call for assistance  081-22234467</h1>
    </footer>

  </body>
</body>
</html>