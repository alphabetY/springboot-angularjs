<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html ng-app>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.13/angular.js"></script>
</head>
<body>
	<div ng-controller="MyController">
		<h1>Hello {{ clock.now }}!</h1>
	</div>
	<script type="text/javascript" src="/js/controllers/controller-clock-update.js"></script>
</body>
</html>
