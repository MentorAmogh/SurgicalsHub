<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- <%@ include file="/WEB-INF/views/adminHeader.jsp"%> -->
<jsp:include page="CommonHeader.jsp"/><!DOCTYPE HTML>
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

			<table class="box">

			   <tr><td> <img src="resources/images/image9.jpg"/></td>
			   <td>
					 <form:form action="adduser" method="post" commandName="UserDetails">
					 User Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input  path="uname" placeholder="User Name"/>  <br> 
					 Id<form:input  path="uid" placeholder="User Id"/><br>					
					 Password<form:password path="upassword" placeholder="Password" required="true"/><br>
					ReEnter Password<form:password path="urepassword" placeholder="Re-Password" required="true"/><br>
					Mobile Number<form:password path="umobnum" placeholder="Re-Password" required="true"/><br>
					Email<form:input type="uemail"  path="uemail" placeholder="Email" required="required"/><br>
					Address<form:input  path="uaddress" placeholder="Address"/><br>
					<input type="submit" value="Register"/>
					</form:form>
					</td>
					</tr>	
			</table>
						
<!--header end here-->
<div class="copyright">
	<p>© 2016 Classy Login Form. All rights reserved | Design by  <a href="http://surgicalshub.com/" target="_blank">  SurgicalsHub</a></p>
</div>
<!--footer end here-->
</body>
</html>