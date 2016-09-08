<!-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="a"%>  -->
<%@ include file="/WEB-INF/views/CommonHeader.jsp"%>
 <!--
 <table>
 
<a:forEach var="abc" items="${rob}">
 <tr>
 <td>${abc.pid}</td>
 <td>${abc.desc}</td>
 <td>${abc.pname}</td>
 <td>${abc.price}</td>
 
 <td>${abc.suppid}</td>
 
 </tr>
</a:forEach>
</table>
-->

<script>
  var prod = ${proddata};
  angular.module('repeatSample', []).controller('productcontroller', function($scope)
   {
                 $scope.products=prod;
   
          $scope.sort = function(keyname)
          {
              $scope.sortKey = keyname;   //set the sortKey to the param passed
              $scope.reverse = !$scope.reverse; //if true make it false and vice versa
          }
              
    });
</script>
<body >
<div  ng-app="repeatSample" ng-controller="productcontroller">
<style>
.center {
    margin: auto;
    width: 40%;
    border: 3px solid #73AD21;
    padding: 20px;
}
</style>
<div class="center">
<table>
<tr><th>PId</th><th>PName</th><th>Price</th><th>SuppId</th><th>Image</th></tr>
Search <input type="text" placeholder="Search products" ng-model="searchText"/>
<br><br>
<tr class="success" ng-repeat="product in products | filter:searchText">
				<!--       
                <td><a href="Description?pid={{product.pid}}">{{product.pid}}</a></td>
				 --> 
                <td><a href="description">{{product.pid}}</a></td>
				
                <td>{{product.pname}}</td>
                <td>{{product.price}}</td>
                <td>{{product.suppid}}</td>
                <td><img src="resources/images/{{product.pid}}.jpg" height="50px" width="50px"/></td>
</tr>
</table>
</div>
</div>
</body>









