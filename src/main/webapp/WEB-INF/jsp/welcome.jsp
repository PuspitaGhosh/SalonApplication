<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
    <head>
       <style >
          <%@include file="/resources/css/style.css" %>
       </style>
    </head>
 
 <body>
        <div class="article">
        <header class="header">
         <div class="logo">
          <b>Live Or Dye</b></div>
         <div class="topnav">
<ul>
   <li><a href="/welcome">Home</a></li>
  <li><a href="/hairstyle">HairStyle</a></li>
  <li><a href="/spa">Spa</a></li>
  <li><a href="/shaving">Shaving</a></li>
  <li><a href="/viewcart">ViewCart</a></li>
 
  <li><a href="/logout">Logout</a></li>
</ul>
                
</div>

        </header>
        
  <div class="slideshow-container">

  <!-- Full-width images with number and caption text -->
  <div class="mySlides fade">
    <div class="numbertext">1 / 5</div>
    <img src="/resources/images/haircut-834280_1280.jpg" width="100%" height="800px">
  </div>

  <div class="mySlides fade">
    <div class="numbertext">2 / 5</div>
    <img src="/resources/images/EYE-Catchers.jpg" style="width:100%"  height="800px">
  </div>

  <div class="mySlides fade">
    <div class="numbertext">3 / 5</div>
    <img src="/resources/images/welcome3.jpg" style="width:100%"  height="800px">
  </div>
    <div class="mySlides fade">
    <div class="numbertext">4 / 5</div>
    <img src="/resources/images/wellness-285587__340.jpg" style="width:100%"  height="800px">
  </div>
    <div class="mySlides fade">
    <div class="numbertext">5 / 5</div>
    <img src="/resources/images/welcome2.jpg" style="width:100%"  height="800px">
  </div>

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>
    
</div>
       <script>
         var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none"; 
    }
   
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1} 
    slides[slideIndex-1].style.display = "block"; 
    setTimeout(showSlides, 3000); // Change image every 2 seconds
}
        </script>
        
  <div class="about">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <h2>Why Live Or Dye?</h2>
            Today we are amongst the best in the domestic and international network in offering most competitive prices and professional quality services without compromising on quality at any time. Our experienced staff knows exactly what would be the best and most comfortable options for the guests.Our mission at Live Or Dye is to provide a friendly, personalized service through a team of highly skilled and creative professionals. Teamwork is our most valuable asset which ensures our clients are always number one, and we strive to exceed your expectations.</div>
        
        
  <canvas id="myCanvas" width="300" height="50"  ></canvas>


            
<br>
       <div class="ser">
            <div class="parts">
                <div class="pic">   
                    <a href="hairstyle">
                    <img src="/resources/images/bob.jpg" width="400px" height="400px" class="image">
                    </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                <div class="title">
                <h1>Hair</h1>
               </div> 
            </div>
                
            <div class="parts">
                <div class="pic">   
                    <a href="spa">
                    <img src="/resources/images/sp.jpg" width="300px" height="400px" class="image">
                    </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                <div class="title">
                <h1>Spa</h1>
               </div> 
            </div>
                    
            <div class="parts">
                <div class="pic">   
                    <a href="shaving">
                    <img src="/resources/images/stubble.jpg" width="400px" height="400px" class="image" >
                    </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                <div class="title">
                <h1>Shave</h1>
               </div> 
            </div>
                    
        </div>
            <br>
            <div class="quote">
                <b><i>"The success of any business depends on the way it treates its customers.Relationships and services with your customers will reflect on the company's bottom-line"</i></b>
                </div>
           <div class="fixed-footer">
        <div class="container">Copyright &copy; LiveOrDye
                           Contact Us LiveOrDye Company,Kolkata<br>
        						Call Us:118452163011
        						Email Us:care@liveordye.com</div>
           </div>
    </body>
</html>