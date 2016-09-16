/**
 * 
 */


var app=angular
		.module("myModule",[])
		.controller("myController",function($scope){
			[
               {name: "Amogh Chitnis", gender:"M", number:9922411332},
          	   {name: "Hiralal", gender:"M", number:9823400112},
          	   {name: "Satish Nasire", gender:"M", number:9876543122},
          	   {name: "Anagha Chitnis", gender:"M", number:9871234569},
          	   {name: "Sanjay Chamedia", gender:"M", number:9876543213},];
			$scope.employees=employees;
             });