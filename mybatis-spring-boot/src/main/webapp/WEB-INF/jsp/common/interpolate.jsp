<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!Doctype html>
<html ng-app="app">
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.13/angular.js"></script>
<script type="text/javascript"
	src="/js/controllers/controller-interpolate.js"></script>
</head>
<body ng-controller="InterpolateController">
	<div id="emailEditor">
		<input ng-model="to" type="email" placeholder="Recipient" />
		<textarea ng-model="emailBody"></textarea>
	</div>
	<div id="emailPreview">
		<pre>__ previewText __</pre>
	</div>
</body>
</html>