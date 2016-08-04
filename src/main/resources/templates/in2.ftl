
<html>
	<head>

		<title>检索结果</title>
		   <script src="${request.contextPath}/static/js/jquery-1.11.1.min.js"></script>
    <link href="${request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css"/>
		
	</head>
	<body>

<p>
<center>----------------------华丽的分割线----------------------</center>
</p>
<br><br>


	<div class="tip-info">
				<label>为您找到相关结果<span>${num}</span>个，耗时<span>${time}</span>毫秒</label>
			</div>
			
	<#list docList as doc>
	<div class="content">
	               <h4>
				<a class="list-main-info" >${doc.docName}</a>
				<p class="detail-info" style="line-height: 1.54;word-wrap: break-word;">${doc.searchAbstract}</p>
				<a target="_blank" href="" class="web-link">/Doc/${doc.docName}</a>
				<a target="_blank" href="/resources/Doc/${doc.docName}" class="download-link">全文下载</a>
			      </h4>
			</div>
	
	  </#list>
	
	
	
	
	
	
	</body>
</html>