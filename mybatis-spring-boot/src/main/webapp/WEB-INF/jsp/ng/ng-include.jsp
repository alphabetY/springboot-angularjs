<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html ng-app="myApp">
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0-rc.3/angular.js"></script>
	<script>
		angular.module('myApp', [])
			.controller("MyController", function($scope) {
				$scope.name="world";
			})
	</script>
</head>
<body>

	<div ng-include="html/fm/divs" ng-controller="MyController"
		ng-init="name = 'World'">Hello {{ name }}</div>

</body>
</html>