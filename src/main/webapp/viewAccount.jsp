<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<table>
		<c:forEach var="account" items="${uaccount}">

		<c:set var="bank" value="${account.bank}"/>
		<c:set var="uName" value="${account.uName}"/>
		<c:set var="aNum" value="${account.aNum}"/>
		<c:set var="branch" value="${account.branch}"/>
		<c:set var="pNum" value="${account.pNum}"/>

		
		<tr>
		    <td>Bank Name</td>
		    <td>${account.bank}</td>
		    
	    </tr>
	    
	    <tr>
		    <td>User Name</td>
		    <td>${account.uName}</td>
		    
	    </tr>
	    
	    <tr>
		    <td>Account Number</td>
		    <td>${account.aNum}</td>
		    
	    </tr>
	    
	    <tr>
		    <td>Branch</td>
		    <td>${account.branch}</td>
		    
	    </tr>
	    
	    <tr>
		    <td>Phone Number</td>
		    <td>${account.pNum}</td>
		    
	    </tr>
	   		
		</c:forEach>
		</table>	

		<c:url value ="updateAccount.jsp" var="updateAccount">
		    <c:param name="bank" value="${bank}"/>
		    <c:param name="uName" value="${uName}"/>
		    <c:param name="aNum" value="${aNum}"/>
		    <c:param name="branch" value="${branch}"/>
		    <c:param name="pNum" value="${pNum}"/>
		
		
		</c:url>
		<c:url value ="deleteaccount.jsp" var="deleteAccount">
		    <c:param name="bank" value="${bank}"/>
		    <c:param name="uName" value="${uName}"/>
		    <c:param name="aNum" value="${aNum}"/>
		    <c:param name="branch" value="${branch}"/>
		    <c:param name="pNum" value="${pNum}"/>
		
		
		</c:url>
		<a href="${updateAccount}"><button class ="update">Update Card</button></a><br>
       <a href="${deleteAccount}"><button class ="delete">Delete</button></a>
</body>		
			


</html>