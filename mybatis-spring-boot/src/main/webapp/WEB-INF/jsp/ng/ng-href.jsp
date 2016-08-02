<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html ng-app="myApp">
<head>
  <script src="/js/angular.js"></script>
</head>
<body>

  <!-- Always use ng-href when href includes an {{ expression }} -->
  <a ng-href="{{myHref}}">I'm feeling lucky, when I load</a>
  
  <!-- href may not load before user clicks -->
  <a href="{{myHref}}">I'm feeling 404</a>

  <script>

    angular.module('myApp', [])
    .run(function($rootScope, $timeout) {

      $timeout(function() {
        $rootScope.myHref = 'http://google.com';
      }, 2000);

    })
  </script>

</body>
</html>