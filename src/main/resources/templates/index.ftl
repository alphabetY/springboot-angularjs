

<html>
<head>
    <title>测试页面</title>

    <script src="static/js/jquery-1.11.1.min.js"></script>
    <link href="static/css/style.css" rel="stylesheet" type="text/css"/>
    
    <style type="text/css">
        .pageDetail {
            display: none;
        }

        .show {
            display: table-row;
        }
    </style>

     <style type="text/css">
        td, th { border: 1px solid #CCC; }
        table { border: 1px solid black; }
        #dropbox:hover { cursor: pointer;}
    </style>
    
    <script>
        $(function () {
            $('#list').click(function () {
                $('.pageDetail').toggleClass('show');
            });
        });

    </script>
    
</head>
<body>








<br><br>
<p>
<center>----------------------可视化----------------------</center>
</p>
<br><br>



  <div class="middle">
<h1 style="padding: 50px 0 20px;"> 数据上传
         </h1>
<form id="form1" name="form1" method="post" action="${request.contextPath}/countriesupload" enctype="multipart/form-data">
 <table border="0" align="center">
  <tr>
  
  <tr>
   <td>上传文件：</td>
   <td><input name="file" type="file" size="20"></td>
  </tr>    
  <tr>   
   <td></td><td>
    <input type="submit" name="submit" value="提交" >
    <input type="reset" name="reset" value="重置" >
   </td>
  </tr>

  
 </table>
 

 
</form>

 
</table>






<div class="wrapper">
    <div class="middle">
        <h1 style="padding: 50px 0 20px;"> 数据检索</h1>



      <form action="${request.contextPath}/xiangliao" method="post">
            <table class="gridtable" style="width:100%;">
                <tr>
                    <th> 化合物名稱：</th>
                    <td><input type="text" name="huahewumingcheng" </td>
                             
                    <th> cas：</th>
                    <td><input type="text" name="cas"
                              </td>
                    <td rowspan="2"><input type="submit" value="查询"/></td>
                </tr>
                <tr>
                    <th>页码：</th>
                    <td><input type="text" name="page" value="${page!0}"/></td>
                    <th>页面大小：</th>
                    <td><input type="text" name="rows" value="${rows!10}"/></td>
                </tr>
            </table>
        </form>


    <#if pageInfo??>
        <table class="gridtable" style="width:100%;">
            <tr>
                <th colspan="2">分页信息 - [<a href="javascript:;" id="list">展开/收缩</a>]</th>
            </tr>
            <tr class="pageDetail">
                <th style="width: 300px;">当前页号</th>
                <td>${pageInfo.pageNum}</td>
            </tr>
            <tr class="pageDetail">
                <th>页面大小</th>
                <td>${pageInfo.pageSize}</td>
            </tr>
            <tr class="pageDetail">
                <th>起始行号(>=)</th>
                <td>${pageInfo.startRow}</td>
            </tr>
            <tr class="pageDetail">
                <th>终止行号(<=)</th>
                <td>${pageInfo.endRow}</td>
            </tr>
            <tr class="pageDetail">
                <th>总结果数</th>
                <td>${pageInfo.total}</td>
            </tr>
            <tr class="pageDetail">
                <th>总页数</th>
                <td>${pageInfo.pages}</td>
            </tr>
            <tr class="pageDetail">
                <th>第一页</th>
                <td>${pageInfo.firstPage}</td>
            </tr>
            <tr class="pageDetail">
                <th>前一页</th>
                <td>${pageInfo.prePage}</td>
            </tr>
            <tr class="pageDetail">
                <th>下一页</th>
                <td>${pageInfo.nextPage}</td>
            </tr>
            <tr class="pageDetail">
                <th>最后一页</th>
                <td>${pageInfo.lastPage}</td>
            </tr>
            <tr class="pageDetail">
                <th>是否为第一页</th>
                <td>${pageInfo.isFirstPage?c}</td>
            </tr>
            <tr class="pageDetail">
                <th>是否为最后一页</th>
                <td>${pageInfo.isLastPage?c}</td>
            </tr>
            <tr class="pageDetail">
                <th>是否有前一页</th>
                <td>${pageInfo.hasPreviousPage?c}</td>
            </tr>
            <tr class="pageDetail">
                <th>是否有下一页</th>
                <td>${pageInfo.hasNextPage?c}</td>
            </tr>
        </table>
        <table class="gridtable" style="width:100%;">
            <#if msg??>
                <tr style="color:red;">
                    <th colspan="5">${msg}</th>
                </tr>
            </#if>
        </table>
        
        <br>
         <table class="gridtable"  style="width:100%;">
         <thead>
            <tr>
                
                <th colspan="30"><h1 style=" 5px 0 5px;"> 数据展示分析 -   </h1>
                <a href="${request.contextPath}/xiangliao/tubiao"><h1 style=" 10px 0 10px;">雷达图</h1></a>
               
                </th>
            
               
            </tr>
           
            
            
            </thead>
          </table>
        
        
     
         <h1 style="padding: 50px 0 20px;"> 数据内容操作
         </h1>
        <table class="gridtable" border="10" style="width:100%;">
            
            <tr>
          
                <th> 序号名</th>
                <th>  化合物名称  </th>
                 <th>    CAS号</th>
                 <th>   英文名称 </th>
                 <th>    分子式</th>
                 <th>    香韵类别</th>
                 <th>    阈值范围</th>
                 <th>    作用阈值</th>
                 <th>    分子量</th>
                 <th>    结构式</th>
                 <th>操作</th>
            </tr>
           
            <tbody>
                <#list pageInfo.list as xiangliao>
                <tr>
                    <td><#if xiangliao.xuhao??>${xiangliao.xuhao}</#if></td>
                    <td><#if xiangliao.huahewumingcheng??>${xiangliao.huahewumingcheng}</#if></td>
                    <td><#if xiangliao.cas??>${xiangliao.cas}</#if></td>
                    <td><#if xiangliao.yingwenmingcheng??>${xiangliao.yingwenmingcheng}</#if></td>
                    <td><#if xiangliao.fenzishi??>${xiangliao.fenzishi}</#if></td>
                    <td><#if xiangliao.xiangyunleibie??>${xiangliao.xiangyunleibie}</#if></td>
                    <td><#if xiangliao.yuzhifanwei??>${xiangliao.yuzhifanwei}</#if></td>
                    <td><#if xiangliao.zuoyongyuzhi??>${xiangliao.zuoyongyuzhi}</#if></td>
                    <td><#if xiangliao.fenziliang??>${xiangliao.fenziliang}</#if></td>
                    <td> 
                    <#if xiangliao.jiegoushi??> <img src="/files/${xiangliao.jiegoushi}"   height="50" width="50" >
                   </#if>
                  <form method="post" action="${request.contextPath}/image/${xiangliao.id}" enctype="multipart/form-data">
           
    <input name="file" type="file" size="20" height="50" width="50">
    <input type="submit" name="submit" value="提交"  height="50" width="50">
</form>
</td>
                       <td style="text-align:center;">
                       
                        [<a href="${request.contextPath}/xiangliao/view/${xiangliao.id}">修改</a>] -
                        [<a href="${request.contextPath}/xiangliao/delete/${xiangliao.id}">删除</a>]
                       </td>
                </tr>
                
                </#list>
            </tbody>
        </table>
        <table class="gridtable" style="width:100%;text-align: center;">
            <tr>
                <#if pageInfo.hasPreviousPage>
                    <td>
                        <a href="${request.contextPath}/xiangliao?page=1&rows=${pageInfo.pageSize}">首页</a>
                    </td>
                    <td>
                        <a href="${request.contextPath}/xiangliao?page=${pageInfo.prePage}&rows=${pageInfo.pageSize}">前一页</a>
                    </td>
                </#if>
                <#list pageInfo.navigatepageNums as nav>
                    <#if nav == pageInfo.pageNum>
                        <td style="font-weight: bold;">${nav}</td>
                    </#if>
                    <#if nav != pageInfo.pageNum>
                        <td>
                            <a href="${request.contextPath}/xiangliao?page=${nav}&rows=${pageInfo.pageSize}">${nav}</a>
                        </td>
                    </#if>
                </#list>
                <#if pageInfo.hasNextPage>
                    <td>
                        <a href="${request.contextPath}/xiangliao?page=${pageInfo.nextPage}&rows=${pageInfo.pageSize}">下一页</a>
                    </td>
                    <td>
                        <a href="${request.contextPath}/xiangliao?page=${pageInfo.pages}&rows=${pageInfo.pageSize}">尾页</a>
                    </td>
                </#if>
            </tr>
        </table>
    </#if>
    </div>
    <div class="push"></div>
</div>




<h1 style="padding: 50px 0 20px;"> copyright:********************</h1>



</body>
</html>