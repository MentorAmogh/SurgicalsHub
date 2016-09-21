<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>   
<%@ include file="/WEB-INF/views/CommonHeader.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE HTML>
<html>
<head>


<!-- Custom Theme files -->
<link href="resources/css/clastyle.css" rel="stylesheet" type="text/css" media="all"/>
<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Classy Login form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- //for-mobile-apps -->
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="resources/css/magnifier.css">



</head>
<script>
$("#zoom_01").elevateZoom();
</script>
<style>
.center {
    margin: auto;
    width: 80%;
    padding: 20px;
}
.centert {
    margin: auto;
    width: 50%;
    border: 2px solid #73AD21;
    padding: 20px;
}
.box
{
width:400px;
height=400px;
position:relative;
top:20px;
left:200px;
}
</style>
<body>


<div class = "row">
   
   <div class = "col-sm-6 col-md-3">
      <div class = "thumbnail">
         <img src = "resources/images/P001.jpg" alt = "Generic placeholder thumbnail" id="zoom_01" data-zoom-image="resources/images/lP003.jpg"/>
      </div>
      
      <div class = "caption">
         <h3>Dental Surgical Chair</h3>
         <p>Very much helpful for Dentists.</p>
         
         <p>
            <a href = "addcart?adpid=P001" class = "btn btn-warning" role = "button">
               Add To Cart
            </a> 
            
            <a href = "addtowishlist?prodid=P002" class = "btn btn-success" role = "button">
               Add To Wish List
            </a>
         </p>
         
      </div>
   </div>
   
   <div class = "col-sm-6 col-md-3">
      <div class = "thumbnail">
         <img src = "resources/images/thone.jpg" alt = "Generic placeholder thumbnail">
      </div>
      
      <div class = "caption">
         <h3>Dental Thones </h3>
         <p>Thones used by dentists for cleanup purpose.</p>
         
         <p>
            <a href = "addtocart?prodid=P002" class = "btn btn-warning" role = "button">
             Add To Cart
            </a> 
            
            <a href = "addtowishlist" class =  "btn btn-success" role = "button">
           Add To Wish List
            </a>
         </p>
         
      </div>
   </div>
   
   <div class = "col-sm-6 col-md-3">
      <div class = "thumbnail">
         <img src = "resources/images/thtwo.jpg" alt = "Generic placeholder thumbnail">
      </div>
      
      <div class = "caption">
         <h3>Surgical Sessors</h3>
         <p>Very much useful in cutting properly.</p>
         
         <p>
            <a href ="addtocart?prodid=P003" class = "btn btn-warning" role = "button">
               Add To Cart
            </a> 
            
            <a href = "addtowishlist" class =  "btn btn-success" role =" button">
             Add To Wish List
            </a>
         </p>
         
      </div>
   </div>
   
   <div class = "col-sm-6 col-md-3">
      <div class = "thumbnail">
         <img src = "resources/images/ththree.jpg" alt = "Generic placeholder thumbnail">
      </div>
      
      <div class = "caption">
         <h3>Surgical Forceps</h3>
         <p>Most important handy tool to pick up and hold skin.</p>
         
         <p>
            <a href = "addtocart?prodid=P004" class = "btn btn-warning" role = "button">
             Add To Cart
            </a> 
            
            <a href = "#" class =  "btn btn-success" role = "button">
            Add To Wish List
            </a>
         </p>
         
      </div>
   </div>
   
</div>	     	

</body>
</html>