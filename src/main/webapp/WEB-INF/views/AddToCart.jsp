<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>   
<%@ include file="/WEB-INF/views/adminHeader.jsp"%>
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
<body>	<table >
Search <input type="text" placeholder="Search products" ng-model="searchText"/>
<br><br>
<tr class="success" ng-repeat="cartproduct in cartproducts | filter:searchText">
				<!--       
                <td><a href="Description?pid={{product.pid}}">{{product.pid}}</a></td>
				 --> 
                <td>{{cartproduct.prodid}}</td>
                <td>{{cartproduct.prodname}}</td>
                <td>{{cartproduct.prodprice}}</td>
                <td><img src="resources/images/{{cartproduct.prodid}}.jpg"></td>
                <td><a href="delete?id={{cartproduct.prodid}}">Remove</td><td></td>
				</tr>
				<td colspan=4><a href="prev" class="button">Continue Shopping </a> </td>
				</td>
				
				</tr>
</table>
<!--header end here-->

<style>
input[type=text] {
    width: 20%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 1px solid #555;
    outline: none;
}

input[type=text]:focus {
    background-color: lightblue;
}

input[type=submit] {
    width: 20%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}	
</style>
</head>
<body>
<form>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<font style="font-family:new century schoolbook;"> Home Address</font><BR>
  <label for="fname">First Name</label>
  <input type="text" id="fname" name="fname" value="Amogh"><br>
  <label for="lname">Last Name</label>
  <input type="text" id="lname" name="lname" value="Chitnis"><br>
	Address Stree1:	<input type="text" id="street1" name="street1"><br>
	Address Stree2:	<input type="text" id="street2" name="street2"><br>
	Landmark <input type="text" id="street2" name="lmark"><br>
	<label>Country</label>
	
    <select name="country">
      <option value="australia">Australia</option>
      <option value="canada">Canada</option>
      <option value="usa">India</option>
      <option value="usa">Japan</option>
    </select>
    </div>
	
    <br>
    <br>
	<label>State</label>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <select name="state">
      <option value="Maharashtra">Maharashtra</option>
      <option value="Gujarath">Gujarat</option>
      <option value="Telangana">Telangana </option>
      <option value="Andhra">Andhra </option>
      <option value="Tamilnadu">TamilNadu</option>
      <option value="Bihar">Bihar</option>
    </select><br>
  <label for="lname">Pin Code</label>
  <input type="text" id="pcode" name="pincode" value="XXXXXX"><br>
  <br>
  <input type="submit" value="Submit">
  
  
</form>
	
<!--copy rights end here-->
<div class="copy-rights wthree">		 	
	<p>© 2016 All Rights Reserved | Design by  <a href="http://amoghchitnis.com/" target="_blank"></a> </p>		 	
</div>
</body>
</html>