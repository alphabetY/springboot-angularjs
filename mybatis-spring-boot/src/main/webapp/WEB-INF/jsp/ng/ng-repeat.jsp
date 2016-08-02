<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html ng-app="myApp">
<head>
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/foundation/4.3.2/css/foundation.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0-rc.2/angular.js"></script>
</head>
<body>

	<ul ng-controller="PeopleController">
		<li ng-repeat="house in houses">
			{{house.houseName}}
			<ul>
				<li ng-repeat="person in people"
					ng-class="{even: !$even, odd: !$odd}">{{person.name}} lives in
					{{person.city}}</li>
			</ul>
		</li>

	</ul>
	<script type="text/javascript">
		angular.module('myApp', []).controller('PeopleController',
				function($scope) {
					$scope.houses = [ {
						houseName : "邓慧智的家"
					}, {
						houseName : "邓伯伦的家"
					} ];
					$scope.people = [ {
						name : "Ari",
						city : "San Francisco"
					}, {
						name : "Erik",
						city : "Seattle"
					}, {
						name : "Erik",
						city : "Seattle"
					}, {
						name : "Erik",
						city : "Seattle"
					}, {
						name : "Erik",
						city : "Seattle"
					}, {
						name : "Erik",
						city : "Seattle"
					}, {
						name : "Erik",
						city : "Seattle"
					}, {
						name : "Erik",
						city : "Seattle"
					} ];
				});
	</script>
</body>
</html>