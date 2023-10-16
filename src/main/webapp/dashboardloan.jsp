<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>welcome bosa !!</h1>
	
	<c:forEach items="${loanreq}" var="cus">
	
	<c:set var="lid" value="${cus.loanNo}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="appamount" value="${cus.appAmount}"/>
	<c:set var="type" value="${cus.type}"/>	
	<c:set var="reason" value="${cus.reason}"/>	
	
	<h4>Customer ID : </h4> ${cus.loanNo}
	<h4>Name : </h4> ${cus.name}
	<h4>Email: </h4> ${cus.email}
	<h4>Appamount : </h4> ${cus.appAmount}
	<h4>Type: </h4> ${cus.type}
	<h4>reason: </h4> ${cus.reason}
	
	</c:forEach>
	
	<c:url value="updateloan.jsp" var="loanupdate">
		<c:param name="lid" value="${loanNo}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="appamount" value="${appAmount}"/>
		<c:param name="type" value="${type}"/>
		<c:param name="reason" value="${reason}"/>
	</c:url>
	<c:url value="deleteloan.jsp" var="loandelete">
		<c:param name="lid" value="${loanNo}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="appamount" value="${appAmount}"/>
		<c:param name="type" value="${type}"/>
		<c:param name="reason" value="${reason}"/>
	</c:url>
	
	<a href="${loanupdate}">
	<button>Update</button>
	</a>
	<a href="${loandelete}">
	<button>delete</button>
	</a>
</body>
</html>