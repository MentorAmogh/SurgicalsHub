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
    width: 100%;
    border: 3px solid #73AD21;
    position:absolute;
    padding: 20px;
}
</style>
<style>
 #map {
        width: 300px;
        height: 400px;
     }
    </style>
<table cellspacing="40">
<tr>

<td>
<div width="40%">
<img src="resources/images/1.jpg" width="300px">
</div>
</td>
<td><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
<td>
<table >
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
<tr>
<td>
</table>
</div>
</td>
<td><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
<td><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
<td>

 <h3>Google Maps</h3>
    <div id="map"></div>
    <script>
      function initMap() {
        var mapDiv = document.getElementById('map');
        var map = new google.maps.Map(mapDiv, {
            center: {lat: 44.540, lng: -78.546},
            zoom: 8
        });
      }
    </script>
    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap">
    </script>
</td>
</tr>
</table>
</div>
</body>









