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
					templateUrl: "/html/fm/divs1",
					controller: "InPageController"
				})
				.when('/divs2', {
					templateUrl: "/html/fm/divs2",
					controller: "HomeController2"
				})
				.when('/divs1', {
					templateUrl: "/html/fm/divs1",
					controller: "HomeController1"
				})
				.otherwise({
					redirectTo: '/'
				});
		}])
		.controller('InPageController', ['$scope','$location',function($scope,$location) {
			$scope.person={
					name:"divs1"
			};
			$scope.person.name="denghuizhi"
			$scope.myHref = '#divs2';
			console.log($location);//已经注入了$location，所以可以使用
		}])
		.controller('HomeController1', ['$scope','$location',function($scope,$location) {
			$scope.person={
					name:"divs1"
			};
			$scope.person.name="denghuizhi"
			$scope.myHref = '#divs2';
			console.log("helloworld");
			console.log($location);
		}])
			.controller('HomeController2', function($scope) {
			$scope.person={
					name:"divs2"
			};
			$scope.person.name="denghuizhi"
			$scope.myHref = '#divs1';
			console.log("helloBaby");
			//console.log($location);
		})
		;

</script>
<title>Insert title here</title>
</head>
<body ng-app="myApp">
	<header ng-controller="InPageController">
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