<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Make a transfer | Olympus</title>
    <link rel="stylesheet" type="text/css" href="css/trans.css">
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
    <div class="pro">
        <div class="pro1">
          <form method="post" action="reg">
            <label id="lb">Request for a loan</label><br><br>
            <label id="lb" for="name">Name</label><br>
            <input type="text" id="tb1" name="name"><br><br>
            <label id="lb" for="name">Email</label><br>
            <input type="text" id="tb1" name="email"><br><br>
            <label id="lb" for="name">Approximate Amount</label><br>
            <input type="text" id="tb1" name="app"><br><br>
            <label id="lb" for="type">Type</label><br>
            <select name="type" id="tb1">
            <option value=""></option>
            <option value="#">####</option>
            <option value="#">####</option>
            <option value="#">####</option>
            <option value="#">####</option>
            </select><br><br>
            <label id="lb" for="reason">Reason for loan</label><br>
            <input type="text" id="tb1" name="reason"><br><br>
            
            <input type="submit" id="btn1" value="Make Request">  
          </form>
            <a href="dashboardtr.jsp"><button id="btn2">View my transactions</button></a>
        </div>
    </div>   
    <br><br>
    <footer>
        <h1 id="ft">Call for assistance  081-22234467</h1>
    </footer>

  </body>
</html>
