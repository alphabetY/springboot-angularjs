<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>${docName}</title>
  <link rel="stylesheet" href="${website}resources/tool/bootstrap/css/bootstrap.css" />
  <link rel="stylesheet" href="${website}resources/css/reset.css">
  <link rel="stylesheet" href="${website}resources/css/content.css">
  <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"  media="screen"/>
  <script type="text/javascript" src="${website}resources/tool/jquery/jquery.js"></script>
</head>
<body>
<div class="page clearfix">
  <div class="top clearfix">
    <input class="back-link" type="button" name="Submit" value="返回上一页" onclick="javascript:history.back(-1);">
    <div class="key-word">
      <h1>${docName}</h1>
    </div>
    <form class="info-search" action="${website}search" method="post">
      <input class="search-area" type="text" name="queryWord" value="${queryWord}" title="输入搜索词" type="search" maxlength="100" autocapitalize="off" autocorrect="off" autocomplete="off" spellcheck="false" role="combobox" aria-autocomplete="both" aria-expanded="false">
      <input class="search-submit" value="搜索" type="submit">
    </form>
  </div>
  <div class="content-background clearfix">
    <a class="content-left" href="${website}content?docName=${preDocName}">
      <img class="dir-link-left" src="${website}resources/img/left.png" alt="向左">
    </a>
    <div class="content" style="text-indent:2em">
      ${content}
    </div>
    <a class="content-right" href="${website}content?docName=${nextDocName}">
      <img class="dir-link-right" src="${website}resources/img/right.png" alt="向右">
    </a>
  </div>
</div><!-- page -->
</body>
<script type="text/javascript">
    $(".content-left").css("height", ($(document).height()-58));
    $(".content").css("height", ($(document).height()-58));
    $(".content-right").css("height", ($(document).height()-58));
    $(".dir-link-left").css("margin-top", ($(document).height()/3));
    $(".dir-link-right").css("margin-top", ($(document).height()/3));
</script>
</html>