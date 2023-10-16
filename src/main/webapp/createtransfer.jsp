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
            <form action="ctrans" method="post"><br><br>
              <label id="lb">Make a Transaction</label><br><br> 
              <label for="send" id="t1">Select sending method</label><br>
              <select name="send1" id="tb1">
                <option value="VISA#4260657898338">VISA#4260657898338</option>
                <option value="MASTERCARD#429998788">MASTERCARD#429998788</option>
                <option value="SAVEACC#847893498338">SAVEACC#847893498338</option>
                <option value="VISA#934139838338">VISA#934139838338</option>
              </select><br><br>
                <label for="amt" id="t1">Amount</label><br>
                <input type="text" name="amt" id="tb1" required><br><br>
                <label for="type" id="t1">Type</label><br>
                <select name="send" id="tb1" required>
                  <option value="Bills">Bills</option>
                  <option value="Fund Transfer">Fund Transfer</option>
                  <option value="Donations">Donations</option>
                  <option value="Other">Other</option>
                </select><br><br>
                <label for="rec" id="t1">Reciever's Acc No</label><br>
                <input type="number" name="rec" id="tb1" required><br><br>
                <label for="ref" id="t1">Refference</label><br>
                <input type="text" name="ref" id="tb1" required><br><br>
                <input type="submit" id="btn1" value="Confirm"> 
              
                
              </div>
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