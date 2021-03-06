<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"/> 

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
      
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
  var prod = ${suppdata};
  angular.module('repeatSample', []).controller('supplierController', function($scope)
   {
                 $scope.products=prod;
   
          $scope.sort = function(keyname)
          {
              $scope.sortKey = keyname;   //set the sortKey to the param passed
              $scope.reverse = !$scope.reverse; //if true make it false and vice versa
          }
              
    });
</script>

<div ng-app="repeatSample" ng-controller="supplierController">
<div class="center">
<!--  border: 3px solid #73AD21; -->
${check}
 			<c:if test="${!check}">
			<table class="box">
			<tr>  
				<td>			
			   <h2> Surgicals Hub Update Supplier Details </h2></td>
			   </tr>
			   <tr><td>
			    
			   	 <form:form  action="updateSupp" commandName="supplier" method="post">
			   		 Supplier Id <form:input  path="suppid" placeholder="Supplier Id"/>  <br> 
					 Supplier Name<form:input path="suppname" placeholder="Name"/><br>					
					 Supplier Address<form:input  path="suppaddr" placeholder="Address"/><br>
					 Supplier Phone<form:input  path="suppphn" placeholder="Mobile Number"/><br>
					 Supplier Email<form:input  path="suppemail" placeholder="Email Id"/><br>
					
					 <input type="submit" value="Update Supplier"/>
				 	</form:form>
				 	</td>
				 	</table>
				 	
			   	 	</c:if>
			     <c:if test="${check}">
			     <table class="box">
			<tr>  
				<td>			
			   <h2> Surgicals Hub Adding New Supplier </h2></td>
			   		   </tr>
			   <tr><td>
			   	 <form:form  action="addsupplier" commandName="supplier" method="post">
			   	 	 Supplier Id <form:input  path="suppid" placeholder="Supplier Id"/>  <br> 
					 Supplier Name<form:input path="suppname" placeholder="Name"/><br>					
					 Supplier Address<form:input  path="suppaddr" placeholder="Address"/><br>
					 Supplier Phone<form:input  path="suppphn" placeholder="Mobile Number"/><br>
					 Supplier Email<form:input  path="suppemail" placeholder="Email Id"/><br>
					<input type="submit" value="Add Supplier"/>
				 	</form:form>
			   	 	</c:if>
			   						 </td>
					
					</tr>	
			</table>
	</div>	
	<div class="center">    		
	<table >
<tr><th>Supplier Id</th><th>Supplier Name</th><th>Address</th><th>Phone</th><th>Email</th></tr>
Search <input type="text" placeholder="Search Supplier" ng-model="searchText"/>
<br><br>
<tr class="success" ng-repeat="supplier in suppliers | filter:searchText">
				<!--       
                <td><a href="Description?pid={{product.pid}}">{{product.pid}}</a></td>
				 --> 
                <td>{{supplier.suppid}}</td>
				<td>{{supplier.suppname}}</td>
                <td>{{supplier.suppaddr}}</td>
                <td>{{supplier.suppphn}}</td>
                <td>{{supplier.suppemail}}</td>
                
                <td><a href="deleteSupp?id={{supplier.suppid}}">Delete{{supplier.suppid}}</td><td></td>
                <td><a href="updateSupp?id={{product.rcatid}}">Update{{supplier.suppid}}</td>
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