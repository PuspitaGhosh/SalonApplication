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

.im{
object-fit: scale-down;
}
/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 700px;
  height:1000px;
  margin-left: 20px;
   margin-bottom: 20px;
  text-align: center;
  font-family: arial;
  float:left;
  object-fit: cover;
}

    .card button:hover {
  opacity: 0.7;
}
.card button {
  border: none;
  outline: 0;
  padding: 12px;
  margin:0%;
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
<header class="header">
           <div class="logo">
            <b>Live Or Dye</b></div>
            <div class="topnav">
<ul>
  <li><a href="/welcome">Home</a></li>
  <li><a href="/hairstyle">HairStyle</a></li>
  <li><a href="/spa">Spa</a></li>
  <li><a href="/shaving">Shave</a></li>
  <li><a href="/viewcart">View Cart</a></li>
<!--   <li><a href="/history">History</a></li> -->
  <li><a href="/logout">Logout</a></li>
</ul>
                
</div>

        </header>
<h2>Available Haircuts</h2>
<c:forEach var="hr" items="${list}">   
 <!--  
<div class="row">
  <div class="column">-->
    <div class="card">
    
  
  <img src="${hr.img}" style="width:100%" style="height:10%">
  
  
  <h1>${hr.type}</h1>
  <p class="price">${hr.price}</p>
  <p>${hr.des}</p>
  
      <button onclick="document.location='baghair/${hr.id}'">Add To Booking</button>
    </div>
 
</c:forEach>  

</body>
</html>
