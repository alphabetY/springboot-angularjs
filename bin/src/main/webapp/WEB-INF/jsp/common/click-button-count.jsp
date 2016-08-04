<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html ng-app="app">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.13/angular.js"></script>
<script type="text/javascript" src="/js/controllers/controller.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div ng-controller="FirstController">
		<h4>The simplest adding machine ever</h4>
		<button ng-click="add(1)" class="button">Add</button>
		<a ng-click="subtract(1)" class="button alert">Subtract</a>
		<h4>Current count: {{ counter }}</h4>
	</div>


</body>
</html>