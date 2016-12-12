<html>
<head>
    <title> 信息</title>
    <link href="${request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body style="margin-top:50px;overflow: hidden;">
<form action="${request.contextPath}/xiangliao/save" method="post">
    <input type="hidden" name="id" value="<#if xiangliao.id??>${xiangliao.id}</#if>"/>
    <table class="gridtable" style="width:800px;">
        <tr>
            <th colspan="5"> 信息 - [<a href="${request.contextPath}/xiangliao">返回</a>]</th>
        </tr>
        <tr>
            <th> 分子式：</th>
            <td><input type="text" name="fenzishi" />
            </td>
            <th> 化合物名称：</th>
            <td><input type="text" name="huahewumingcheng" />
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
