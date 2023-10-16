<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>View Card</title>
    <link rel="stylesheet" type="text/css" href="css/cardacc.css">
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
          <label id="lb">Card Details</label><br><br>
          <table>
            <c:forEach var="card" items="${ucard}">
        
            <c:set var="type" value="${card.type}"/>
            <c:set var="cName" value="${card.cName}"/>
            <c:set var="cNum" value="${card.cNum}"/>
            <c:set var="eDate" value="${card.eDate}"/>
            <c:set var="cvv" value="${card.cvv}"/>
            
            
              <h1 id="t1">Card Type   :${card.type}</h1>
              <h1 id="t1">Card Holder Name   :${card.cName}</h1>
              <h1 id="t1">Card number   :${card.cNum}</h1>
              <h1 id="t1">Expire Date   :${card.eDate}</h1>
              <h1 id="t1">CVV   :${card.cvv}</h1>

            </c:forEach>
            </table>
        </div>
    </div> 
    <div class="hd">
    <c:url value ="updateCard.jsp" var="updateCard">
				<c:param name="type" value="${type}"/>
				<c:param name="cName" value="${cName}"/>
				<c:param name="cNum" value="${cNum}"/>
				<c:param name="eDate" value="${eDate}"/>
				<c:param name="cvv" value="${cvv}"/>
			</c:url>
			<c:url value ="deletecard.jsp" var="deleteCard">
				<c:param name="type" value="${type}"/>
				<c:param name="cName" value="${cName}"/>
				<c:param name="cNum" value="${cNum}"/>
				<c:param name="eDate" value="${eDate}"/>
				<c:param name="cvv" value="${cvv}"/>
			</c:url>
			<a href="${updateCard}"><button id="btn1" class ="update">Update Card</button></a>
		   	<a href="${deleteCard}"><button id="btn1">Delete card</button></a>  
    </div>
    
    <br><br>
    <footer>
        <h1 id="ft">Call for assistance  081-22234467</h1>
    </footer>

  </body>
</html>