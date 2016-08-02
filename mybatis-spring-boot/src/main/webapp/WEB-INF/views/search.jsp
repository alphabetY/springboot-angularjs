<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<title>检索结果</title>
		<link rel="stylesheet" href="${website}resources/tool/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" href="${website}resources/css/reset.css">
		<link rel="stylesheet" href="${website}resources/css/result-list.css">
		<link rel="shortcut icon" type="image/x-icon" href="favicon.ico"  media="screen"/>
		<script type="text/javascript" src="${website}resources/tool/jquery/jquery.js"></script>
	</head>
	<body>
		<div class="page clearfix" style="margin-bottom: 20px">
			<div class="top clearfix">
				<form class="info-search" action="${website}search" method="post">
					<img class="logo" src="${website}resources/img/logo.png">
					<input class="search-area" type="text" name="queryWord" value="${queryWord}" title="输入搜索词" type="search" maxlength="100" autocapitalize="off" autocorrect="off" autocomplete="off" spellcheck="false" role="combobox" aria-autocomplete="both" aria-expanded="false">
					<input class="search-submit" value="搜索" type="submit">
					<a class="back-link" href="${website}">返回首页</a>
				</form>
			</div>
			<div class="tip-info">
				<label>为您找到相关结果<span>${num}</span>个，耗时<span>${time}</span>毫秒</label>
			</div>

			<c:forEach var="doc" items="${docList}">
			<div class="content">
				<a class="list-main-info" href="${website}content?docName=${doc.docName}&queryWord=${queryWord}">${doc.docName}</a>
				<p class="detail-info" style="line-height: 1.54;word-wrap: break-word;">${doc.searchAbstract}</p>
				<a target="_blank" href="${website}resources/Doc/${doc.docName}" class="web-link">${website}resources/Doc/${doc.docName}</a>
				<a target="_blank" href="${website}resources/Doc/${doc.docName}" class="download-link">全文下载</a>
			</div>
			</c:forEach>
		</div><!-- page -->
	</body>
</html>