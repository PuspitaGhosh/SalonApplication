

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

 * {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}



/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  width: 720px;
   height: 600px;
  margin-left: 20px;
   margin-bottom: 20px;
  text-align: center;
  font-family: arial;
  float:left;
}

    .card button:hover {
  opacity: 0.7;
}
.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
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
  <li><a href="/welcome">Home</a></li>
   <li><a href="/hairstyle">Hair Style</a></li>
  <li><a href="/spa">Spa</a></li>
 
  <li><a href="/shaving">Shave</a></li>
  <li><a href="/viewcart">view cart</a></li>
<!--   <li><a href="/history">History</a></li> -->
  <li><a href="/logout">Logout</a></li>
  
</ul>
                
</div>

        </header>
<h2>Available Spas</h2>
<c:forEach var="sp" items="${list}">   
    <div class="card">
    
  
  <img src="${sp.img}" style="width:100%" style="height:10%">
  
  
  <h1>${sp.type}</h1>
  <p class="price">${sp.price}</p>
  <p>${sp.des}</p>
  
      <button onclick="document.location='bagspa/${sp.id}'">Add To Booking</button>
    </div>
 
</c:forEach>  

</body>
</html>