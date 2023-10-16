<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard | Olympus</title>
<style>
body {
	background-image: url(img/10.jpg);
	background-repeat: no-repeat;
	background-size: 1550px 950px;
	background-attachment: fixed;
	height: fit-content;
}

#t1 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 7rem;
}

header {
	background-color: rgba(0, 0, 0, 0.368);
	display: flex;
	height: 8rem;
}

#p1 {
	margin: auto;
	position: relative;
	right: 13rem;
}

footer {
	background-color: rgba(0, 0, 0, 0.368);
	font-family: Arial, Helvetica, sans-serif;
	text-align: center;
	height: 3rem;
}

#ft {
	display: flex;
	font-size: 20px;
	margin-left: 37rem;
	margin-top: 10px;
	color: white;
}

#t2 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 3rem;
	color: rgb(255, 255, 255);
	text-align: center;
	position: relative;
	top: -12rem;
}

#pwr {
	position: relative;
	right: 4rem;
	top: 2rem;
}

#pwr:hover {
	transform: scale(1.2);
}

#t3 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 1rem;
	color: rgb(255, 255, 255);
	text-align: center;
	position: relative;
	top: -12.5rem;
}

#btn1 {
	background-color: green;
	color: white;
	font-family: Arial, Helvetica, sans-serif;
	font-size: large;
	width: 10rem;
	height: 3rem;
	position: relative;
	left: 6rem;
	bottom: 3rem;
}

#btn1:hover {
	transition: all ease 0.2s;
	background-color: rgb(186, 255, 83);
	color: black;
}

.tx ul {
	display: flex;
	list-style: none;
}

.tx li {
	color: white;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 1.1rem;
	text-decoration: none;
	margin-left: 2.5rem;
	margin-left: 2.5rem;
}

.tx li:hover {
	color: yellowgreen;
	transition: all ease 0.4s;
}

.pro {
	background-color: rgba(0, 0, 0, 0.522);
	width: 30rem;
	height: 30rem;
	padding-top: -15rem;
	position: relative;
	left: 2rem;
	top: 4rem;
	border-radius: 3%;
}

.pro1 {
	padding-left: 4.5rem;
	padding-top: 3rem;
}

.pro2 {
	position: relative;
	left: 40rem;
	bottom: 10rem;
}

.tx {
	position: relative;
	right: 23rem;
	top: 2rem;
}

#t4 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 2rem;
	color: rgb(244, 228, 17);
	padding-left: 4.5rem;
}

#t5 {
	font-family: Arial, Helvetica, sans-serif;
	color: white;
	font-size: 1rem;
}

#t6 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 1rem;
	padding-right: 2rem;
	padding-top: 1.3rem;
	z-index: 2;
}
</style>
</head>
<body>
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
	<c:forEach items="${customer}" var="cus">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="password" value="${cus.password}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="email" value="${cus.email}"/>	
	
	<div class="pro">
		<div class="pro1">
			<h4 id="t4">User Profile</h4>
			<h4 id="t5">Customer ID :  ${cus.id}</h4>
			<h4 id="t5">Name : ${cus.name}</h4>
			<h4 id="t5">Contact No : ${cus.phone}</h4>
			<h4 id="t5">Email :  ${cus.email}</h4>
		</div>
		<div class="pro2">    
          <h1 id="t2">Welcome ${cus.name} !!</h1>
          <h1 id="t3">Start managing your financial needs online</h1>
        </div>
	</div>	
	
	</c:forEach>
	
	<c:url value="update.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="password" value="${password}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="email" value="${email}"/>
	</c:url>
	<c:url value="delete.jsp" var="cusdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="password" value="${password}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="email" value="${email}"/>
	</c:url>
	
	<a href="${cusupdate}">
	<button id="btn1">Update</button>
	</a>
	<a href="${cusdelete}">
	<button id="btn1">Delete</button>
	</a>
	<br>
	<br>
	<br>
	<br>
	<br>
	<footer>
		<h1 id="ft">Call for assistance 081-22234467</h1>
	</footer>
	
</body>
</html>