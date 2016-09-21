<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/9.2.0/css/bootstrap-slider.css">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<style>
h1 {
	color: #fff;
	font-face: Rio Grande Striped;
	background-color: bisque;
	text-shadow: #fff 0 -1px 24px, #ff0 0 -2px 30px, #ff8000 0 -10px 20px, red 0 -18px 40px;
}
</style>

<body>
	<%
	 Integer hitsCount = (Integer)application.getAttribute("hitCounter");
     %>

	<!-- img src="resources/images/header.jpg" should try in corusal-->
	<span background-color="bisque"><h1><font face="Rio Grande Striped" size="56"><center>Surgicals Hub</center></font></h1></span>
		&nbsp; Follow us on:
			 <a href="http://twitter.com/Kyokushinowa" class="btn btn-social-icon btn-twitter">
    		<span class="fa fa-twitter"><img class="img-circle" src="resources/images/twitter.jpg" height="50" width="50"></span>
		  </a>
		<a href="https://www.instagram.com" class="btn btn-social-icon btn-instagram">
    		<span class="fa fa-instagram"><img class="img-circle" src="resources/images/insta.jpg" height="50" width="50"></span>
		  </a>
		  
		<a href="http://facebook.com/alterowo" class="btn btn-social-icon btn-facebook">
    		<span class="fa fa-facebook"><img class="img-circle" src="resources/images/facebook.jpg" height="50" width="50"></span>
		  </a>
		  
		<a href="https://www.youtube.com" class="btn btn-social-icon btn-youtube">
    		<span class="fa fa-youtube"><img class="img-circle" src="resources/images/youtube.jpg" height="50" width="50"></span>
		  </a>

<c:choose>

<c:when test="UserLoggedIn">
<c:out value="Welcome ${UserLoggedIn}">
</c:out>
</c:when>
<c:otherwise>

<c:out value= "Welcome ${UserLoggedIn}">

</c:out>
</c:otherwise>
</c:choose>
	<p align="right"> Visitor-><c:out value="${hitsCounts}"></c:out></p>
	<br>
		<nav class="navbar navbar-inverse" >
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#"><img src="resources/images/mylogo.gif" height="20" width="20"></a>
				</div>
				<ul class="nav navbar-nav">
			
			 <c:choose>
    			<c:when test="${sessionScope.UserLoggedIn == null}">
       				<li><a href="index.jsp">Home<span class="glyphicon glyphicon-home"></span></a></li>
                	<li><a href="about">About Us</a></li>
                	<li><a href="contact">Contact Us<span class="glyphicon glyphicon-envelope"></span></a></li>
                	<li><a href="dispproducts">View Products</a></li>
                	<li><a href="register">Register <span class="glyphicon glyphicon-registration-mark"></span></a></li>
	                <li><a href="login">LogIn</a></li>
    			</c:when>
    			<c:when test="${sessionScope.UserLoggedIn != 'Administrator'}">
    						<li><a href="index.jsp">Home<span class="glyphicon glyphicon-home"></span></a></li>
                	<li><a href="about">About Us</a></li>
                	<li><a href="contact">Contact Us<span class="glyphicon glyphicon-envelope"></span></a></li>
                	<li><a href="dispproducts">View Products</a></li>
                	<li><a href="register">Register <span class="glyphicon glyphicon-registration-mark"></span></a></li>
	             	<li><a href="perform_logout">Logout</a></li>
                </c:when>
    			<c:otherwise>
    			<li><a href="disproducts">Product <span class="glyphicon glyphicon-registration-mark"></span></a></li>
        			<li><a href="category">Catagory</a></li>
					</li><a href="disproduct">Supplier</a>    </li>
					<li><a href="perform_logout">Logout</a></li>
    			</c:otherwise>
				</c:choose>
				</ul>
				<p>${sessionScope.UserLoggedIn}</p>
             </div>
          </div>
        </div>
          </div>
    </div>
  </div>
				</ul>
					
					<!-- Previously there was search option Over here -->
							</nav>
