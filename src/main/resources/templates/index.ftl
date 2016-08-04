

<html>
<head>
    <title>测试页面</title>
    
    
  
    
    
    <script src="${request.contextPath}/static/js/jquery-1.11.1.min.js"></script>
    <link href="${request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
        .pageDetail {
            display: none;
        }

        .show {
            display: table-row;
        }
    </style>
    <script>
        $(function () {
            $('#list').click(function () {
                $('.pageDetail').toggleClass('show');
            });
        });

    </script>
     <style type="text/css">
        td, th { border: 1px solid #CCC; }
        table { border: 1px solid black; }
        #dropbox:hover { cursor: pointer;}
    </style>
    <script>
        function init() {
            var dropbox;

            dropbox = document.getElementById("dropbox");
            dropbox.addEventListener("dragenter", dragenter, false);
            dropbox.addEventListener("dragover", dragover, false);
            dropbox.addEventListener("drop", drop, false);
        }

        function dragenter(e) {
            e.stopPropagation();
            e.preventDefault();
        }

        function dragover(e) {
            e.stopPropagation();
            e.preventDefault();
        }

        function drop(e) {
            e.stopPropagation();
            e.preventDefault();

            var dt = e.dataTransfer;
            var files = dt.files;

            handleFiles(files);
        }

        function handleFiles(files) {
            var imageType = /image.*/;

            for (var i = 0; i < files.length; i++) {
                var file = files[i];

//                if (!file.type.match(imageType)) {
//                    continue;
//                }

                var img = document.createElement("img");
                img.width = 80;
                img.classList.add("obj");
                img.file = file;

                var progress = document.createElement("progress");
                progress.value = 0;
                progress.max = 100;
                img.progress = progress;

                var tr = document.createElement("tr");
                var td = document.createElement('td');
                td.appendChild(img);
                tr.appendChild(td);
                td = document.createElement('td');
                td.appendChild(progress);
                tr.appendChild(td);
                var status = document.createElement('td');
                status.innerHTML = "pending";
                tr.appendChild(status);

                preview.appendChild(tr); // Assuming that "preview" is a the div output where the content will be displayed.

                var reader = new FileReader();
                reader.onload = (function (aImg, aFile, aProgress, aStatus) {
                    return function (e) {
                        if (aFile.type.match(imageType)) {
                            aImg.src = e.target.result;
                        }

                        new FileUpload(aFile, aProgress, aStatus);
                    };
                })(img, file, progress, status);
                reader.readAsDataURL(file);
            }
        }

        function FileUpload(file, progress, status) {
            var xhr = new XMLHttpRequest();
            this.file = file;
            this.progress = progress;
            this.xhr = xhr;

            var self = this;
            xhr.upload.onloadstart = function (e) {
                status.innerHTML = "uploading";
            };
            xhr.upload.onprogress = function (e) {
                if (e.lengthComputable) {
                    self.progress.value = Math.round((e.loaded * 100) / e.total);
                }
            };
            xhr.upload.onload = function (e) {
                self.progress.value = 100;
            };

            xhr.open("POST", window.location.href + "upload", true);
            xhr.onreadystatechange = function () {
                if (xhr.readyState == XMLHttpRequest.DONE) {
                    if (xhr.status >= 200 && xhr.status < 300) {
                        while (status.firstChild) {
                            status.removeChild(status.firstChild);
                        }
                        var link = document.createElement('a');
                        link.href = window.location.href + "file/" + file.name;
                        link.target = "_blank";
                        var text = document.createTextNode("success");
                        link.appendChild(text);
                        status.appendChild(link);
                    }
                    else {
                        status.innerHTML = "fail";
                    }
                }

                console.log(xhr.readyState + "," + xhr.status + "," + xhr.responseText)
            };

            var formData = new FormData();
            formData.append("file", file, file.name);
            formData.append("description", "Пользовательский файл");

            xhr.send(formData);
        }

        function clickFiles() {
            var el = document.getElementById("formFiles");
            if (el) {
                el.click();
            }
        }

        window.addEventListener("load", init, false);

    </script>
    
</head>
<body>



<br><br>
<p>
<center>----------------------华丽的分割线----------------------</center>
</p>
<br><br>



  <div class="middle">
<form>
    <!--<input type="file" id="files" multiple accept="image/*" style="display:none" onchange="handleFiles(this.files)">-->
    <input type="file" id="formFiles" multiple style="display:none" onchange="handleFiles(this.files)">
</form>

<div>
    <div id="dropbox" style="margin:30px; width:500px; height:300px; border:1px dotted grey;" onclick="clickFiles()">拖到你的文件，到碗里来。或点我。</div>
</div>

<table id="preview">
    <tr>
        <th>Preview</th>
        <th>Progress</th>
        <th>Status</th>
    </tr>
</table>


<br><br>
<p>
<center>----------------------华丽的分割线----------------------</center>
</p>
<br><br>

<div class="middle">
        
          <center>
          <table>
            
            <tr >
                <td><a href="${request.contextPath}/search">去搜索</a></td>
               
            </tr>
            <tr >
               
                <td><a href="${request.contextPath}/search">去爬取</a></td>
               
            </tr>
           
</table>
 <center>
   </div>

<br><br>
<p>
<center>----------------------华丽的分割线----------------------</center>
</p>




<div class="wrapper">
    <div class="middle">
        <h1 style="padding: 50px 0 20px;"> 数据库</h1>

        <form action="${request.contextPath}/countries" method="post">
            <table class="gridtable" style="width:100%;">
                <tr>
                    <th> 名称：</th>
                    <td><input type="text" name="countryname"
                               value="<#if queryParam.countryname??>${queryParam.countryname}</#if>"/></td>
                    <th> 代码：</th>
                    <td><input type="text" name="countrycode"
                               value="<#if queryParam.countrycode??>${queryParam.countrycode}</#if>"/></td>
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
        <table class="gridtable" style="width:100%;">
            <thead>
            <tr>
                <th colspan="4">查询结果 - [<a href="${request.contextPath}/countries/add">新增 (地区)</a>]</th>
            </tr>
            <tr>
                <th>ID</th>
                <th> 名</th>
                <th> 代码</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
                <#list pageInfo.list as country>
                <tr>
                    <td>${country.id}</td>
                    <td>${country.countryname}</td>
                    <td>${country.countrycode}</td>
                    <td style="text-align:center;">[<a
                            href="${request.contextPath}/countries/view/${country.id}">修改</a>] -
                        [<a href="${request.contextPath}/countries/delete/${country.id}">删除</a>]
                    </td>
                </tr>
                </#list>
            </tbody>
        </table>
        <table class="gridtable" style="width:100%;text-align: center;">
            <tr>
                <#if pageInfo.hasPreviousPage>
                    <td>
                        <a href="${request.contextPath}/countries?page=1&rows=${pageInfo.pageSize}&countryname=${queryParam.countryname}&countrycode=${queryParam.countrycode}">首页</a>
                    </td>
                    <td>
                        <a href="${request.contextPath}/countries?page=${pageInfo.prePage}&rows=${pageInfo.pageSize}&countryname=${queryParam.countryname}&countrycode=${queryParam.countrycode}">前一页</a>
                    </td>
                </#if>
                <#list pageInfo.navigatepageNums as nav>
                    <#if nav == pageInfo.pageNum>
                        <td style="font-weight: bold;">${nav}</td>
                    </#if>
                    <#if nav != pageInfo.pageNum>
                        <td>
                            <a href="${request.contextPath}/countries?page=${nav}&rows=${pageInfo.pageSize}&countryname=<#if queryParam.countryname??>${queryParam.countryname}</#if>&countrycode=<#if queryParam.countrycode??>${queryParam.countrycode}</#if>">${nav}</a>
                        </td>
                    </#if>
                </#list>
                <#if pageInfo.hasNextPage>
                    <td>
                        <a href="${request.contextPath}/countries?page=${pageInfo.nextPage}&rows=${pageInfo.pageSize}&countryname=<#if queryParam.countryname??>${queryParam.countryname}</#if>&countrycode=<#if queryParam.countrycode??>${queryParam.countrycode}</#if>">下一页</a>
                    </td>
                    <td>
                        <a href="${request.contextPath}/countries?page=${pageInfo.pages}&rows=${pageInfo.pageSize}&countryname=<#if queryParam.countryname??>${queryParam.countryname}</#if>&countrycode=<#if queryParam.countrycode??>${queryParam.countrycode}</#if>">尾页</a>
                    </td>
                </#if>
            </tr>
        </table>
    </#if>
    </div>
    <div class="push"></div>
</div>



<div class="middle"><h1>copyright:信息中心    </h1>18392977827</div>




</body>
</html>