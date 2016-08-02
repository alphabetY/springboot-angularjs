<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<title>信息检索</title>
		<link rel="stylesheet" href="resources/tool/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" href="resources/css/reset.css">
		<link rel="stylesheet" href="resources/css/index.css">
		<link rel="shortcut icon" type="image/x-icon" href="favicon.ico"  media="screen"/>
		<script type="text/javascript" src="resources/tool/jquery/jquery.js"></script>
	</head>
	<body>
		<div class="page clearfix">
			<ul class="cb-slideshow">
	            <li><span></span><div></div></li>
	            <li><span></span><div></div></li>
	            <li><span></span><div></div></li>
	            <li><span></span><div></div></li>
	            <li><span></span><div></div></li>
	            <li><span></span><div></div></li>
        	</ul>
			<form class="info-search" action="search" method="post">
				<img src="resources/img/logo.png" alt="" style="width:60px;height:60px;margin-left:50px;">
				<input class="search-area" type="text" name="queryWord" value="" title="输入搜索词" type="search" value="" maxlength="100" autocapitalize="off" autocorrect="off" autocomplete="off" spellcheck="false" role="combobox" aria-autocomplete="both" aria-expanded="false">
				<input class="search-submit" value="搜索" type="submit">
			</form>
			<div class="tip">
				<img class="tip-person" src="resources/img/person.png" alt="tip">
				<div class="tip-border">
					您可以搜索“经济”、“国家”等关键词
				</div>
			</div>
		</div><!-- page -->
		<script type="text/javascript">
			$(document).ready(function(){
				$(".search-area").focus(function(){ 
					$(".search-area").css("border", "1px solid #3385FF");
				});  
			});
			$(document).ready(function(){
				$(".search-area").blur(function(){ 
					$(".search-area").css("border","none");
				});  
			});
		</script>
	</body>
</html>