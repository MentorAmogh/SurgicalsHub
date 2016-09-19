<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>   
<jsp:include page="CommonHeader.jsp"/>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link href="resources/css/linkcss.css" rel="stylesheet" type="text/css" media="all"/>

<!DOCTYPE HTML>
<html>
<head>
<!-- Custom Theme files -->
<link href="resources/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- for-mobile-apps -->

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
.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}

.button2 {background-color: #008CBA;} /* Blue */
.button3 {background-color: #f44336;} /* Red */
.button4 {background-color: #e7e7e7; color: black;} /* Gray */
.button5 {background-color: #555555;} /* Black */
</style>
<script>
  var cartprod = ${cartdata};
  angular.module('repeatSample', []).controller('categorycontroller', function($scope)
   {
                 $scope.cartproducts=cartprod;
   
          $scope.sort = function(keyname)
          {
              $scope.sortKey = keyname;   //set the sortKey to the param passed
              $scope.reverse = !$scope.reverse; //if true make it false and vice versa
          }
              
    });
</script>
<div  ng-app="repeatSample" ng-controller="categorycontroller">
<body>	
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(odd){background-color: skyblue}

tr:nth-child(even){background-color: bisque}
</style>



<table style="table-layout:fixed" width="40%" >
<tr class="success" ng-repeat="cartproduct in cartproducts | filter:searchText">
				<!--       
                <td><a href="Description?pid={{product.pid}}">{{product.pid}}</a></td>
				 --> 
                <td width="220px" height="20%"><img src="resources/images/{{cartproduct.prodid}}.jpg" height="200" width="200"></td>
                <td height="30%" width="300px" style="vertical-align:top"><u>Product Name :</u>{{cartproduct.prodname}}<br><br><u>Product Details:</u> {{cartproduct.proddesc}}<br><br><u>Product Price:</u> {{cartproduct.prodprice}}</td>
                <td height="30%"  style="vertical-align:middle" width="20%"><a href="deletecartitem?id={{cartproduct.prodid}}" class="button button3"> Remove</td>
				<td style="vertical-align:middle">Quantity <select name="Qty"><option value="1">1</option> <option value="2">2</option> <option value="3">3</option> <option value="4">4</option> <option value="5">5</option></select></td>			
				</tr>
			</table>
		
			
				<center><a href="dispproducts" class="button">Continue Shopping </a><nobr/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="checkout" class="button button2">Checkout</a> </center>

<!--header end here-->

</body>
</html>