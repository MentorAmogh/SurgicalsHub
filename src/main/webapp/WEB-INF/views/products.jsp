<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>   
<!-- <%@ include file="/WEB-INF/views/adminHeader.jsp"%> -->
<jsp:include page="CommonHeader.jsp"/>
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
  var prod = ${proddata};
  var catids=${catidretrieved};
  var suppliers=${suppidretrieved};
  var app = angular.module('myApp', []);
  var chk=${check};
  app.controller('myCtrl', function($scope) 
  {
      $scope.catlist= catids
      $scope.prodlist=prod;
      $scope.supplist=suppliers;
   
  }
  );    
  </script>
  <center>
  	 <form:form action="addproducts" modelAttribute="prdt" enctype="multipart/form-data" commandName="products" method="POST">
			   		 Prod Id <form:input  path="prodid" placeholder="Product Id"/>  <br> 
					 Product Name<form:input path="prodname" placeholder="Product Name"/><br>	

				
					 Product Description<form:input  path="proddesc" 

placeholder="Description"/><br>
					
					<div ng-app="myApp"><div ng-controller="myCtrl">
					Category Id 
					<form:select path="catid" >
							<option ng-repeat="cat in catlist" value="{{cat.rcatid}}">

{{cat.rcatname}}</option>
					</form:select>
					<br>
					Supplier Id
						<form:select path="suppid" >
							<option ng-repeat="supp in supplist" value="{{supp.suppid}}">{{supp.suppname}}</option>
					</form:select>
					
					<br>
					
					 Price<form:input  path="prodprice" placeholder="Product Price"/><br>
					 Stock<form:input  path="prodstock" placeholder="Stock"/><br>
					 Image <form:input type="file" path="pimage"/>
					 <br>
					 <input type="submit" value="Add Product"/>
	  
	     		 
	     		 
   		 
<table>
<tr><th>Product Name</th><th>Description</th><th>Image</th></tr>
<br/><br/>			<tr ng-repeat="product in prodlist">
			    <td>{{product.prodid}}</td>
				<td>{{product.proddesc}}</td>
                
                <td><img src="resources/images/{{product.prodid}}.jpg" height="100" class="img-circle" width="100"/></td>
                 <td><a href="delete?id={{product.prodid}}">Delete{{product.prodid}}</td><td></td>
                <td><a href="update?id={{product.prodid}}">Update{{product.prodid}}</td><td>{{product.prodid}}</td>
           </tr>
</table>	     		 
	
	</div>  
	</div>  		 
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     	
	     		 
	    		 </form:form>	    		 
</center>	     		 			
</body>
</html>