<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="/js/angular.js"></script>
<script src="/js/angular-route.js"></script>
<script type="text/javascript">

	angular.module('myApp', ['ngRoute'])
		.config(['$routeProvider',function($routeProvider){
			$routeProvider
				.when('/', {
					templateUrl: "/html/fm/divs",
					controller: "HomeController"
				})
				.when('/',{
					templateUrl: "/html/fm/divs2",
					controller:"DivController"
				})
				.otherwise({
					redirectTo: '/'
				});
		}])
		.controller('HomeController', function($scope,$location) {
			$scope.person={
					name:"dengbolun"
			};
			$scope.person.name="denghuizhi";
			$scope.myHref='/html/fm/divs2';
		})
		.controller('DivController', function($scope) {
			$scope.person={
					name:"dengbolun"
			};
			$scope.person.name="denghuizhi";
			$scope.myHref='/html/fm/divs';
		})
		.run(function($rootScope, $timeout) {
		   
		})
		;

</script>
<title>Insert title here</title>
</head>
<body ng-app="myApp">
	<header ng-controller="HomeController">
	<h1>{{person.name}}</h1>
	</header>
	<div class="content">
		<div ng-view></div>
	</div>
	<footer>
	<h5>Footer</h5>
	</footer>
</body>
</html>