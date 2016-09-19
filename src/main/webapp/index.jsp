
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<%@ include file="/WEB-INF/views/CommonHeader.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE HTML>
<html>
<head>
<link rel="shortcut icon" type="image/x-icon" href="resources/images/bell.ico"/>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Classy Login form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- Custom Theme files -->
<link href="resources/css/clastyle.css" rel="stylesheet" type="text/css" media="all"/>
<!-- for-mobile-apps -->
<!-- //for-mobile-apps -->
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700' rel='stylesheet' type='text/css'>
<title>Surgicals Hub</title>
</head>

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
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
.carousel {
	background: #2f4357;
	margin-top: 20px;
}
.carousel .item img {
	margin: 0 auto; /* Align slide image horizontally center */
	height: 50%;
	width:50%;
}

.bs-example {
	margin: 20px;
}
</style>
	<style>
h1 {
	color: #fff;
	font-face: Rio Grande Striped;
background-color: #333;
text-shadow: #fff 0 -1px 24px, #ff0 0 -2px 30px, #ff8000 0 -10px 20px, red 0 -18px 40px;
}
</style>
		
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="resources/images/image1.jpg" alt="Chania">
    </div>

    <div class="item">
      <img src="resources/images/image2.jpg" alt="Chania">
    </div>

    <div class="item">
      <img src="resources/images/image3.jpg" alt="Flower">
    </div>

    <div class="item">
      <img src="resources/images/image4.jpg" alt="Flower">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
	<center>	
  <img src="resources/images/ethicon.jpg" height="120" width="120"  class="img-circle" alt="A generic square placeholder image with rounded corners in a figure.">
  <img src="resources/images/image_7.jpg" height="120" width="120"  class="img-circle"/>
  <img src="resources/images/BRAUN.jpg" height="120" width="120"  class="img-circle"/>		
  <img src="resources/images/jandj.jpg" height="120" width="120"  class="img-circle"/>		
  <img src="resources/images/JMS.jpg" height="120" width="120"  class="img-circle"/>		
  <img src="resources/images/meril.jpg" height="120" width="120" class="img-circle"/>		
</center>

<%
    Integer hitsCounts = (Integer)application.getAttribute("hitCounter");
    if( hitsCounts ==null || hitsCounts == 0 )
    {
       hitsCounts = 1;
    }
    else{
     
       hitsCounts += 1;
    }
    application.setAttribute("hitCounter", hitsCount);
    System.out.print("count"+hitsCounts);
%>

</body>
