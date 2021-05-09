<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html>
<html>
<head>

<link rel="icon"href="/resources/images/favicon-16x16.png" />

<title>
LiveOrDye
</title>
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

${txt}
<h1>Register yourself to Live Or Dye</h1>
<br><br>
<form method="post">
<table>
<tr>
<td>First Name:</td>
<td><input name="fname" type="text" required="required"/></td>
</tr>
<tr>
<td>Last Name:</td>
<td><input name="lname" type="text" required="required"/></td>
</tr>
<tr>
<td>Mobile:</td>
<td><input name="mobile" type="text" required="required"/></td>
</tr>
<tr>
<td>Email:</td>
<td><input name="email" type="email" required="required"/></td>
</tr>
<tr>
<td>Password:</td>
<td><input name="password" type="password" required="required"/></td>
</tr>
<tr>
<td></td>
<td align="right"><input type="submit" value="Submit"/></td>
</tr>
</table>
</form>
<div class="fixed-footer">
        <div class="container">Copyright &copy; LiveOrDye
                           Contact Us LiveOrDye Company,Kolkata<br>
        						Call Us:118452163011
        						Email Us:care@liveordye.com</div>
           </div>


</body>
</html>