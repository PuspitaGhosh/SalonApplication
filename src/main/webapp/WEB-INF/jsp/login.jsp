<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="icon"href="/resources/images/favicon-16x16.png" />

<title>LiveOrDye</title>
<style>
 <%@include file="/resources/css/style.css" %>
</style>
</head>
<body>
<header class="header">
<div class="logo">
            <b>Live Or Dye</b></div>
            <div class="topnav">
<ul>
  <li><a href="/">Home</a></li>
  <li><a href="/about">About us</a></li>
  <li><a href="/services">Services</a></li>
  <li><a href="/login">Login</a></li>
  <li><a href="/registration">Registration</a></li>
</ul>
                
</div>

 </header>
 
    

<h1>Login</h1>

<form action="login" method="post">                     	<%-- editted	action		 --%>
<table>
<tr><td>UserId</td><td><input name="email" type="email" required="required"/></td></tr>

<tr></tr><br></br>
<tr><td>Password</td><td><input name="password" type="password" required="required"/></td></tr>
<tr></tr>
<tr><td></td><td align="center"><input name="submit" type="submit"/></td></tr>

<tr><td></td><td>New user?<a href="/registration">Register</a> yourself.</td></tr>
</table>
<font color="red">${mssg}</font>
</form>
</div>
<div class="fixed-footer">
        <div class="container">Copyright &copy; LiveOrDye
                           Contact Us LiveOrDye Company,Kolkata<br>
        						Call Us:118452163011
        						Email Us:care@liveordye.com</div>
           </div>
           </div>
</body>
</html>