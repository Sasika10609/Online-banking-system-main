<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String bank = request.getParameter("bank");
		String uName = request.getParameter("uName");		       
		String aNum = request.getParameter("aNum");			
		String branch = request.getParameter("branch");		
		String pNum = request.getParameter("pNum");	
	%>
	
    <form action ="deletedaccount" method="post">
   
    Bank Name <input type="text" name="bank" value="<%=bank%>" readonly><br>                 
    User Name <input type="text" name="uName" value="<%=uName%>" readonly><br>
    Account Number <input type="text" name="aNum" value="<%=aNum%>" readonly><br>
    Branch <input type ="text" name ="branch" value="<%=branch%>" readonly><br>
    Phone Number <input type="text" name="pNum" value="<%=pNum%>" readonly><br><br>
    
    		<label>Are you sure want to remove this card ?</label>
    		
    <input type="submit" name="submit" value="Delete Card">
    </form>
</body>
</html>