<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html ng-app="app">
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.13/angular.js"></script>
</head>
<body>
	<div ng-controller="ExpressionController">
		<input ng-model="expr" type="text" placeholder="enter an expression"/>
		<h2>{{parsedValue}}</h2>
	</div>
	<script type="text/javascript" src="/js/controllers/controller-expression.js"></script>
</body>
</html>