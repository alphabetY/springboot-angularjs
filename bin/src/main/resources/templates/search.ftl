
<html>
	<head>

		<title>检索结果</title>
		   <script src="${request.contextPath}/static/js/jquery-1.11.1.min.js"></script>
    <link href="${request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css"/>
		
	</head>
	<body>
	<br><br>
<p>
<center>----------------------华丽的分割线----------------------</center>
</p>
<br><br>
	
      <div class="middle">          
                
            <form action="${request.contextPath}/search/index" method="post">
            
            <table class="gridtable" style="width:100%;">
                <tr>
       <td>    <input type="text" name="docPath" value="" />索引文件目录</td> 
       <td ><input type="submit" value="索引"/></td>
               
               
                </tr>
                 <#if msg??>
                <tr style="color:red;">
                    <th colspan="5">${msg}</th>
                </tr>
               </#if>
                
            </table>
  <br><br>            
     <p>
<center>----------------------华丽的分割线----------------------</center>
</p>
<br><br>       
            
            
        </form>
        
          <form action="${request.contextPath}/search/query" method="post">
           
            
            <table class="gridtable" style="width:100%;">
               <tr>
                 
                  <td>    <input type="text" name="queryWord" value=""/>关键词查询</td> <td ><input type="submit" value="查询"/></td>
                </tr>
                
                
            </table>
        </form>
        
 <br><br>          
        <p>
<center>----------------------华丽的分割线----------------------</center>
</p>
<br><br>


        <form action="${request.contextPath}/index" method="post">
            
            <table class="gridtable" style="width:100%;">
              <tr>
                  <td>    <input type="text" name="rows" value=""/>爬取网站内容</td> <td ><input type="submit" value="爬取"/></td>
                </tr>
                
                
            </table>
        </form>

          </div>
 
 	
	</body>
</html>