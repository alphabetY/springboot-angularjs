<html>
<head>
    <title> 信息</title>
    <link href="${request.contextPath}/css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body style="margin-top:50px;overflow: hidden;">
<form action="${request.contextPath}/xiangliao/save" method="post">
    <input type="hidden" name="id" value="<#if xiangliao.id??>${xiangliao.id}</#if>"/>
    <table class="gridtable" style="width:800px;">
         <tr>
            <th colspan="9> [ <a href=" ${request.contextPath}/xiangliao" >  插入  </a> [ <a href=" ${request.contextPath}/xiangliao" >  返回主页  </a> ]  </th>
        </tr>
        <tr>
            <th> 序号：</th>
            <td><input type="text" name="xuhao" value="${xiangliao.xuhao}"/>
            </td>
            <th> 分子式：</th>
            <td><input type="text" name="fenzishi" value="${xiangliao.fenzishi}"/>
            </td>
            <th> 化合物名称：</th>
            <td><input type="text" name="huahewumingcheng" value="${xiangliao.huahewumingcheng}"/>
            </td>
             <th> 分子量：</th>
            <td><input type="text" name="fenziliang" value="${xiangliao.fenziliang}"/>
            </td>
            <td><input type="submit" value="保存"/></td>
        </tr>
    <#if msg??>
        <tr style="color:#00ba00;">
            <th colspan="5">${msg}</th>
        </tr>
    </#if>
    </table>
</form>
</body>
</html>
