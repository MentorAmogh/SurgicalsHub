<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/views/adminHeader.jsp"%>
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
<div class="center">
<!--  border: 3px solid #73AD21; -->

			<table class="box">
			<tr>  
				<td>			
			   <h2> Surgicals Hub </h2></td>
			   </tr>
			   <tr><td>
					 <form:form  action="showcategory" commandName="category" method="post">
					 Category Id &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<form:input  path="rcatid" placeholder="Category Id"/>  <br> 
					 Category Name<form:input path="rcatname" placeholder="Category Name"/><br>					
					 Description<form:input  path="rcatdesc" placeholder="Description"/><br>
					<input type="submit" value="Add Category"/>
					</form:form>
					
					 </td>
					<td>
					</td>
					</tr>	
			</table>
	</div>	    		
						
<!--header end here-->
<div class="copyright">
	<p>� 2016 Classy Login Form. All rights reserved | Design by  <a href="http://surgicalshub.com/" target="_blank">  SurgicalsHub</a></p>
</div>
<!--footer end here-->
</body>
</html>