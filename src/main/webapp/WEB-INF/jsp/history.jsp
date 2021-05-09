<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>history</title>

<link rel="icon"href="/resources/images/favicon-16x16.png" />
<style>
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
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");//HTTP 1.1
response.setHeader("Pragma","no-cache");//HTTP 1.0
response.setHeader("Expires", "0");//Proxies
%>
<header class="header">
           <div class="logo">
            <b>Live Or Dye</b></div>
            <div class="topnav">
<ul>

  <li><a href="/logout">Logout</a></li>
  
</ul>
                
</div>

        </header>

  <h1>Your History of Appointments.</h1>
  
<table  class="cart" style="width:700px" cellpading="2">
<tr><th>Appointment id</th><th>Your Mail id</th><th>Appointment Date</th><th>Total Bill amount</th></tr>
<tr></tr>
		<c:forEach items="${style}" var="h">
			<tr>
			<td>${h.idappointment}</td>
			<td>${h.userid}</td>
			<td>${h.date}</td>
			<td>${h.price}</td>
			</tr>
		</c:forEach>
	</table>
<div class="fixed-footer">
        <div class="container">Copyright &copy;LiveOrDye
                           Contact Us LiveOrDye Company,Kolkata<br>
        						Call Us:118452163011
        						Email Us:care@liveordye.com</div>
           </div>
</body>
</html>