<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <link rel="stylesheet" href="css/viewtable.css">
    <title>All transactions | Olympus</title>
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
    <div class="content">
      <div class="pro">
        <div class="pro1">
          <%@page import="java.sql.DriverManager" %>
          <%@page import="java.sql.ResultSet" %>
          <%@page import="java.sql.Statement" %>
          <%@page import="java.sql.Connection" %>
        
          <%
            
          String id = request.getParameter("userId");
          String url = "jdbc:mysql://localhost:3306/database1";
          String user = "root";
          String pass = "nismo2333";
        
          try {
            Class.forName("com.mysql.jdbc.Driver");
          } catch (ClassNotFoundException e) {
            e.printStackTrace();
          }
          %>
          	<h1 id="lb2">All Transactions</h1>
            <table align="center" cellpadding="10" id="responsive-data-table"
              class="table dt-responsive nowrap" style="width: 100%">
        
              <tr>
        
              </tr>
              <tr>
                <td id="trd"><b>transID</b></td>
                <td id="trd"><b>sender</b></td>
                <td id="trd"><b>type</b></td>
                <td id="trd"><b>amount</b></td>
                <td id="trd"><b>reciever</b></td>
                <td id="trd"><b>reff</b></td>
              </tr>
              <%
              try {
                Class.forName("com.mysql.jdbc.Driver");
        
                Connection con = DriverManager.getConnection(url, user, pass);
                Statement stmt = con.createStatement();
                String sql = "select * from funds";
        
                ResultSet rs = stmt.executeQuery(sql);
                while (rs.next()) {
                  String idx = rs.getString("transID");
                  String senderx = rs.getString("sender");
                  String typex = rs.getString("type");
                  String amountx = rs.getString("amount");
                  String recieverx = rs.getString("reciever");
                  String reffx = rs.getString("reff");
              %>
              <tr>
        
                <td><%= idx%></td>
                <td><%= senderx%></td>
                <td><%= typex%></td>
                <td><%= amountx%></td>
                <td><%= recieverx%></td>
                <td><%= reffx%></td>
                        
                <c:url value="updatetransfer.jsp" var="traupdate">
                <c:param name="tid" value="<%= idx%>"/>
                <c:param name="cid" value="<%= senderx%>"/>
                <c:param name="amount" value="<%= amountx%>"/>
                <c:param name="type" value="<%= typex%>"/>
                <c:param name="recieve" value="<%= recieverx%>"/>
                <c:param name="reff" value="<%= reffx%>"/>
                </c:url>
                
                <c:url value="deletetransfer.jsp" var="tradelete">
                <c:param name="tid" value="<%= idx%>"/>
                <c:param name="cid" value="<%= senderx%>"/>
                <c:param name="amount" value="<%= amountx%>"/>
                <c:param name="type" value="<%= typex%>"/>
                <c:param name="recieve" value="<%= recieverx%>"/>
                <c:param name="reff" value="<%= reffx%>"/>
                </c:url>
                
                <td><a href="${traupdate}"><button id="btn2">Update</button></a></td>
                <td><a href="${tradelete}"><button id="btn2">Delete</button></a></td>
        
              </tr>
        
              <%
              }
        
              } catch (Exception e) {
              e.printStackTrace();
              }
              %>
              
              </table>
            
        </div>
    </div> 
  </div>     
    </div>
    <br><br>
    <footer>
        <h1 id="ft">Call for assistance  081-22234467</h1>
    </footer>

  </body>
</html>