<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>View Card</title>
    <link rel="stylesheet" type="text/css" href="css/cardsearch.css">
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

    

    <div class="pro">
        <div class="pro1">
          <form action="logcard" method="post">
            <label for="user" id="t1">Enter Username</label><br>
            <input type="text" name="user" id="tb1"><br><br>
            <input type="submit" value="Proceed" id="btn1">
          </form>
        </div>
    </div>   
    <br><br>
    <footer>
        <h1 id="ft">Call for assistance  081-22234467</h1>
    </footer>

  </body>
</html>