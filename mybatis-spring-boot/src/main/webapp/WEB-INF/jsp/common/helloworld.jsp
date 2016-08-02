<!DOCTYPE html>
<html ng-app>
<head>
<title>Simple app</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.13/angular.js">
	
</script>
</head>
<body>
	<input ng-model="name" type="text" placeholder="Your name">
	<h1>Hello {{ name }}</h1>
</body>
</html>