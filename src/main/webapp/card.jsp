<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Card</title>
    <link rel="stylesheet" type="text/css" href="css/cardinsert.css">
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

    <div class="pro">
        <div class="pro1">
          <h1 id="lb">Add Card</h1>
    	  <br>
    
    <form action ="card" method="post">
    <label for="type" id="t1">Card Type </label><br>
      <input type ="radio" name ="type" value="Visa">
      <label for="Visa" id="t1">Visa</label>
      <input type ="radio" name ="type" value="Master">
      <label for="MasterCard" id="t1">MasterCard</label><br><br>
              
     <label for="cName" id="t1">Card Holder Name</label><br>
     <input type="text" id="tb1" name="cName"><br><br>
     <label for="cNum" id="t1">Card number</label><br>
     <input type="text" id="tb1" name="cNum"><br><br>
     <label for="eDate" id="t1">Expire Date</label><br>
     <input type ="date" id="tb1" name ="eDate"><br><br>
     <label for="cvv" id="t1">CVV</label><br>
     <input type="text" id="tb1" name="cvv"><br><br>
    
    <input type="submit" name="submit" value="Submit" id="btn1">
    </form>
        </div>
    </div>   
    <br><br>
    <footer>
        <h1 id="ft">Call for assistance  081-22234467</h1>
    </footer>

  </body>
</html>