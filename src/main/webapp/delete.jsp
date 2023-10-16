<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!doctype html>
<html lang="en">
  <head>
    <title>Update user Details | Olympus</title>
    <link rel="stylesheet" type="text/css" href="css/del.css">
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
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
	%>
	
	<div class="pro">
		<div class="pro1">
			<form action="deletea" method="post">
			<label for="cid" id="t1">Customer ID</label><br>
            <input type="text" id="tb1" name="cid" value="<%= id%>" readonly><br><br>
            <label for="name" id="t1">Name</label><br>
            <input type="text" id="tb1" name="name" value="<%= name%>" readonly><br><br>
            <label for="password" id="t1">Password</label><br>
            <input type="password" id="tb1" name="password" value="<%= password%>" readonly><br><br>
            <label for="phone" id="t1">Phone</label><br>
            <input type="text" id="tb1" name="phone" value="<%= phone%>" readonly><br><br>
            <label for="email" id="t1">Email</label><br>
            <input type="email" id="tb1" name="email" value="<%= email%>" readonly><br><br>
            
            <label id="t1">Are you Sure want to delete your account ?</label><br><br>
			<input type="submit" name="submit" value="Delete" id="btn1">
  	</form>
		</div>
	</div>
	<br><br><br>
    <footer>
        <h1 id="ft">Call for assistance  081-22234467</h1>
    </footer>

  </body>
</html>