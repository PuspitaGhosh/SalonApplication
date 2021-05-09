<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>liveordye</title>

<link rel="icon"href="/resources/images/favicon-16x16.png" />
<style>
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

<h1>Your appointment is booked.We will soon be at your service.</h1>
<div class="fixed-footer">
        <div class="container">Copyright &copy; Live or Dye<br>
                           Contact Us Live Or Dye Company,Kolkata<br>
        						Call Us:118452163011<br>
        						Email Us:care@liveordye.com</div>
           </div>
</body>
</html>