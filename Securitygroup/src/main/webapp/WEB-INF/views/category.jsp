<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>   
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
<script>
  var prod = ${catdata};
  angular.module('repeatSample', []).controller('categorycontroller', function($scope)
   {
                 $scope.products=prod;
   
          $scope.sort = function(keyname)
          {
              $scope.sortKey = keyname;   //set the sortKey to the param passed
              $scope.reverse = !$scope.reverse; //if true make it false and vice versa
          }
              
    });
</script>

<div  ng-app="repeatSample" ng-controller="categorycontroller">
<div class="center">
<!--  border: 3px solid #73AD21; -->
${check}
 			<c:if test="${!check}">
			<table class="box">
			<tr>  
				<td>			
			   <h2> Surgicals Hub Updating Category </h2></td>
			   </tr>
			   <tr><td>
			    
			   	 <form:form  action="update" commandName="category" method="post">
			   		 Category Id <form:input  path="rcatid" placeholder="Category Id"/>  <br> 
					 Category Name<form:input path="rcatname" placeholder="Category Name"/><br>					
					 Description<form:input  path="rcatdesc" placeholder="Description"/><br>
					 Status<form:input  path="datatoupdate" placeholder="Description"/><br>
					 <input type="submit" value="Update"/><input type="submit" value="Add Category"/>
				 	</form:form>
				 	</td>
				 	</table>
				 	
			   	 	</c:if>
			     <c:if test="${check}">
			     <table class="box">
			<tr>  
				<td>			
			   <h2> Surgicals Hub Adding New Category </h2></td>
			   		   </tr>
			   <tr><td>
			   	 <form:form  action="showcategory" commandName="category" method="post">
			   	 	 Category Id <form:input  path="rcatid" placeholder="Category Id"/>  <br> 
					 Category Name<form:input path="rcatname" placeholder="Category Name"/><br>					
					 Description<form:input  path="rcatdesc" placeholder="Description"/><br>
					 Status<form:input  path="datatoupdate" placeholder="Description"/><br>
					 
					<input type="submit" value="Add Category"/>
				 	</form:form>
			   	 	</c:if>
			   						 </td>
					
					</tr>	
			</table>
	</div>	
	<div class="center">    		
	<table >
<tr><th>Cat Id</th><th>Category Name</th><th>Description</th></tr>
Search <input type="text" placeholder="Search products" ng-model="searchText"/>
<br><br>
<tr class="success" ng-repeat="product in products | filter:searchText">
				<!--       
                <td><a href="Description?pid={{product.pid}}">{{product.pid}}</a></td>
				 --> 
                <td>{{product.rcatid}}</td>
				
                <td>{{product.rcatname}}</td>
                <td>{{product.rcatdesc}}</td>
                <td>{{product.datatoupdate}}</td>
                
                
                <td><a href="delete?id={{product.rcatid}}">Delete{{product.rcatid}}</td><td></td>
                <td><a href="update?id={{product.rcatid}}">Update{{product.rcatid}}</td><td>{{product.datatoupdate}}</td>
           </tr>
<tr>
<td>
</table>
</div>					
<!--header end here-->
<div class="copyright">
	<p>� 2016 Classy Login Form. All rights reserved | Design by  <a href="http://surgicalshub.com/" target="_blank">  SurgicalsHub</a></p>
</div>
<!--footer end here-->
</body>
</html>