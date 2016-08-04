<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html ng-app>
<head>
<meta charset="utf-8"/ >
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.13/angular.js"></script>
</head>
<body>
	<div ng-controller="MyController">
		<h1>Hello {{ clock }}!</h1>
		图灵社区会员 鸟月月(dearzpfree@hotmail.com) 专享 尊重版权 8 第 2章 数据绑定和第一个 AngularJS
		Web应用
	</div>
	<script type="text/javascript">
		function MyController($scope, $timeout) {
			var updateClock = function() {
				$scope.clock = new Date();
				$timeout(function() {
					updateClock();
				}, 1000);
			};
			updateClock();
		};
	</script>
</body>
</html>