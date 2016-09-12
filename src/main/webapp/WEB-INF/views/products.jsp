<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<script>
  var prod = ${proddata};
  var catids=${catidretrieved};
  var app = angular.module('myApp', []);
  app.controller('myCtrl', function($scope) 
  {
      $scope.catlist= catids
      $scope.suplist=prod;
 //     $scope.prodlist=productlist;
     
  }
  );    
  </script>
	
			    
			   	 <form:form action="products" commandName="products" method="get">
			   		 Prod Id <form:input  path="prodid" placeholder="Product Id"/>  <br> 
					 Product Name<form:input path="prodname" placeholder="Product Name"/><br>					
					 Product Description<form:input  path="proddesc" placeholder="Description"/><br>
					Category Id 
					<div ng-app="myApp"><div ng-controller="myCtrl">
					<form:select path="catid" >
							<option ng-repeat="cat in catlist" value="{{cat.rcatid}}">{{cat.rcatname}}</option>o
					</form:select>
					<select name="data" >
							
					</select>
					</div>
					</div>
					Supplier Id
					<!-- 
					Task to do connect supplier table
					 -->
					<div ng-app="myApp"><div ng-controller="myCtrl">
					<form:select path="catid" >
							<option ng-repeat="sup in suplist" value="{{sup.suppid}}">{{sup.suppname}}</option>o
					</form:select>
					<select name="data" >
							
					</select>
					</div>
					</div>
					 Price<form:input  path="prodprice" placeholder="Product Price"/><br>
					 Stock<form:input  path="prodstock" placeholder="Stock"/><br>
					 <input type="submit" value="Update Product"/>
	     		 </form:form>
				 
				 	
		</div>				
</body>
</html>