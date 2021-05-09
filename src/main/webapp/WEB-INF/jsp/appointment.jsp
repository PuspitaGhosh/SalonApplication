<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LiveOrDye</title>
<link rel="icon"href="/resources/images/favicon-16x16.png" />
<style >
.GFG { 
            background-color: white; 
            border: 2px solid black; 
            color: green; 
            padding: 5px 10px; 
            text-align: center; 
            display: inline-block; 
            font-size: 20px; 
            margin: 10px 30px; 
            cursor: pointer; 
            align:center;
        } 
        table,td
        {
        border:2px solid black;
        text-align:center;
        font-size:24px;
        }
<%@include file="/resources/css/style.css" %>
</style>
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires", "0");
%>
<header class="header">
           <div class="logo">
            <b>Live Or Dye</b></div>
            <div class="topnav">
<ul>
<!--   <li><a href="/welcome">Home</a></li> -->
<!--   <li><a href="/hairstyle">HairStyle</a></li> -->
<!--   <li><a href="/spa">Spa</a></li> -->
<!--   <li><a href="/shaving">Shave</a></li> -->
<!--   <li><a href="/viewcart">View Cart</a></li> -->
  <li><a href="/history">History</a></li>
  <li><a href="/logout">Logout</a></li>
</ul>
                
</div>

        </header>


  
  <h1>"Appointment is being registered for user:"${user}</h1>
  
  <table  class="cart" style="width:500px">
<tr><th>Services</th><th>Price</th></tr>
		<c:forEach items="${cart}" var="h">
			<tr>
			
				<td>${h.type}</td>
				<td>${h.price}</td>
			</tr>
		</c:forEach>
	</table>
	<br><br>
<!-- 	<table  class="cart" style="width:500px"> -->
	
<%-- 		<c:forEach items="${style}" var="h"> --%>
<!-- 			<tr> -->
			
<%-- 				<td>${h.date}     </td> --%>
<%-- 				<td>${h.price}     </td> --%>
<!-- 			</tr> -->
<%-- 		</c:forEach> --%>
<!-- 	</table> -->

	<h1>Appointment date: ${style.get(0).getDate()}</h1>
	<h1>Your Total Bill Amount is: ${total}</h1>
	
	<h1><a href="/thankyou"><button class="GFG"> 
            Proceed
        </button></a></h1>
	
	<div class="fixed-footer">
        <div class="container">Copyright &copy; LiveOrDye<br>
                           Contact Us LiveOrDye Company,Kolkata<br>
        						Call Us:118452163011<br>
        						Email Us:care@liveordye.com</div>
           </div>
</body>
</html>