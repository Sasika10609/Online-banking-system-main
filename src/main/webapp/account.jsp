<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD Account</title>
</head>
<body>

<h1>Add Account</h1>
    <br>
    
    <form action ="account" method="post">
   
    Bank Name <input type="text" name="bank"><br>                 
    User Name <input type="text" name="uName"><br>
    Account Number <input type="text" name="aNum"><br>
    Branch <input type ="text" name ="branch"><br>
    Phone Number <input type="text" name="pNum"><br><br>
    
    <input type="submit" name="submit" value="Submit">
    </form>

</body>
</html>