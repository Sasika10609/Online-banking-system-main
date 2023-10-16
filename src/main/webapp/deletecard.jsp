<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Delete Card</title>
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
        <a href="Home.jsp"><img src="img/power.png" width="50px" id="pwr"></a>
       </div>
    </header>

  <body>
    <%
			String type = request.getParameter("type");
			String cName = request.getParameter("cName");		       
			String cNum = request.getParameter("cNum");			
			String eDate = request.getParameter("eDate");		
			String cvv = request.getParameter("cvv");		
		%>

    <div class="pro">
        <div class="pro1">
          <form action ="deleted" method="post">                      
            <label for="cName" id="t1">Card Holder Name</label><br>
            <input type="text" name="cName" value="<%=cName%>" id="tb1" readonly><br><br>
            <label for="cNum" id="t1">Card number</label><br>
            <input type="text" name="cNum" value="<%=cNum%>" id="tb1" readonly><br><br>
            <label for="eDate" id="t1">Expire Date</label><br>
            <input type ="date" name ="eDate" value="<%=eDate%>" id="tb1" readonly><br><br>
            <label for="cvv" id="t1"> CVV</label><br>
            <input type="text" name="cvv" value="<%=cvv%>" id="tb1" readonly><br><br>
		
		<label id="t1">Are you sure want to remove this card ?</label><br><br>
		  
		<input type="submit" name="submit" value="Delete Card" id="btn1">
		</form>
		   <br><br>
    <footer>
        <h1 id="ft">Call for assistance  081-22234467</h1>
    </footer>
		
</body>
</html>