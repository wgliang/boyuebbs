<%-- 
    Document   : zuzhi
    Created on : 2014-11-20, 20:56:02
    Author     : chenqian
--%>

<%@page import="java.sql.ResultSet"%>
<%@page language="java" pageEncoding="GB2312" %>
<%@page contentType="text/html;charset=GB2312" %>

<!DOCTYPE html>
<html lang="zh-CN" dropEffect="none" class="no-js ">
<head>
<meta charset="utf-8" />

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="renderer" content="webkit" />

<title>泊月--组织</title>

<meta name="apple-itunes-app" content="app-id=432274380" />

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<meta http-equiv="mobile-agent" content="format=html5;url=http://www.zhihu.com/">
<meta id="znonce" name="znonce" content="1224e3d6e57c4d30aa4056379ddb33b8">
<link rel="apple-touch-icon-precomposed" href="" />
<link rel="apple-touch-icon-precomposed" href="" sizes="72x72" />
<link rel="apple-touch-icon-precomposed" href="" sizes="76x76" />
<link rel="apple-touch-icon-precomposed" href="" sizes="114x114" />
<link rel="apple-touch-icon-precomposed" href="" sizes="120x120" />
<link rel="apple-touch-icon-precomposed" href="" sizes="152x152" /> <%--这里应该方图标 logo 不过没显示放哪里，姑且不用--%>


<link rel="shortcut icon" href="#" type="image/x-icon"> <!--主页最上面的小标示 先空着吧 -->

<link rel="search" type="application/opensearchdescription+xml" href="http://static.zhihu.com/static/search.xml" title="泊月" />
<link rel="stylesheet" href="topics/zuzhi.css">
<!-- 
<script src="http://static.zhihu.com/static/ver/c9815c35381b57c0fdc44e8d89dc4327.instant.min.js"></script>
-->
<meta property="wb:webmaster" content="8e9c4b702508b902" />

</head>

<body class="zhi">
    
    <%@include file="topbbs.jsp" %>  <%--最上面的一条 --%>
    
<div class="zu-global-notify" id="zh-global-message" style="display:none">
<div class="zg-wrap">
<div class="zu-global-nitify-inner">
<a class="zu-global-notify-close" href="javascript:;" title="关闭" name="close">x</a>
<span class="zu-global-notify-icon"></span>
<span class="zu-global-notify-msg"></span>
</div>
</div>
</div>

     <!--这个是创建话题界面 -->

<div class="shameimaru-placeholder" data-class="ExploreDownShameimaruV2" data-params='{}'></div>

<%@include file="footer.jsp" %>  <%--最下面的footer 脚注 --%>

</div>
<div class="zg-clear"></div>
<input type="hidden" name="_xsrf" value="f43c64143da3005f927dc1d7c9d0ec40"/>
</body>
</html>