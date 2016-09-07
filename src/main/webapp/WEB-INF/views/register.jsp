<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<<jsp:include page="CommonHeader.jsp"/>
<!DOCTYPE HTML>
<html>
<head>

<script src="resources/js/jquery.min.js"></script>
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
</head>
<body>
		       <h1>Surgicals Hub </h1>
					 <form:form action="#" method="get" commandName="Register">
					 Name<form:input  path="rname" placeholder="User Name"/>  <br> 
					 Id<form:input  path="rid" placeholder="User Id"/><br>					
					 Password<form:password path="rpassword" placeholder="Password" required="true"/><br>
					ReEnter Password<form:password path="repassword" placeholder="Re-Password" required="true"/><br>
					Email<form:input type="email"  path="remail" placeholder="Email" required="required"/><br>
					Address<form:input  path="raddress" placeholder="Address"/><br>
					<input type="submit" value="Register"/>
					</form:form>	
					
						
<!--header end here-->
<div class="copyright">
	<p>� 2016 Classy Login Form. All rights reserved | Design by  <a href="http://surgicalshub.com/" target="_blank">  SurgicalsHub</a></p>
</div>
<!--footer end here-->
</body>
</html>