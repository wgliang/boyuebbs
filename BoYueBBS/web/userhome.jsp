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
    <div style="height:60px"><h1>个人设置</h1></div>
    
<div class="zu-global-notify" id="zh-global-message" style="display:none">
<div class="zg-wrap">
<div class="zu-global-nitify-inner">
<a class="zu-global-notify-close" href="javascript:;" title="关闭" name="close">x</a>
<span class="zu-global-notify-icon"></span>
<span class="zu-global-notify-msg"></span>
</div>
</div>
</div>
  
<div class="zg-wrap zu-main page-explore">
<div class="zu-main-content">
<div class="zu-main-content-inner">
<!-- aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa-->
    <% String username = (String)session.getAttribute("username");%>
   <h1>用户名：     <%=username%></h1>
   <% String userhead = (String)session.getAttribute("head");%>
    <h1>头像：</h1>
    <img class="avatar" src="<%=userhead%>" alt="images" />
    <div>
    <% String usersex = (String)session.getAttribute("sex");%>
    <h1>性别：     <%=usersex%></h1>
    </div>
    <% String useremail = (String)session.getAttribute("email");%>
    <h1>E-mail：     <%=useremail%></h1>
    <% String userbirth = (String)session.getAttribute("birth");%>
    <h1>出生日期：     <%=userbirth%></h1>
    <% String usersign = (String)session.getAttribute("sign");%>
    <h1>签名个性：     <%=usersign%></h1>
<!-- aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa-->
   <span id="new" name="new"></span>  <%-- 锚 --%>

   
</div>
</div>
<div class="zu-main-sidebar">
<div class="shameimaru-placeholder" data-class="ExploreUpShameimaruV2" data-params='{}'></div>

     <%@include file="rightTopic.jsp" %>  <%--最右边的热门话题 排行榜 --%>
     <%--
<div class="zm-side-section explore-side-section">
<div class="zm-side-section-inner">
<div class="section-title">
<a href="javascript:;" id="js-hot-fav-switch" class="zg-link-gray zg-right">换一换</a>
<h3>热门收藏</h3>
</div>
<ul class="list hot-favlists">
<li>
<div class="content">
<a href="/collection/31550689" target="_blank">这个世界很大</a>
<div class="meta">
<span>2770 人关注</span>
<span class="zg-bull">&bull;</span>
<span>182 个回答</span>
</div>
</div>
</li>

<li>
<div class="content">
<a href="/collection/20160931" target="_blank">这些问题让我看见更大的世界</a>
<div class="meta">
<span>795 人关注</span>
<span class="zg-bull">&bull;</span>
<span>103 个回答</span>
</div>
</div>
</li>

<li>
<div class="content">
<a href="/collection/25563994" target="_blank">眼镜问答</a>
<div class="meta">
<span>1864 人关注</span>
<span class="zg-bull">&bull;</span>
<span>262 个回答</span>
</div>
</div>
</li>

<li>
<div class="content">
<a href="/collection/39688250" target="_blank">生物技术相关（人体及动植物）</a>
<div class="meta">
<span>28 人关注</span>
<span class="zg-bull">&bull;</span>
<span>25 个回答</span>
</div>
</div>
</li>

<li>
<div class="content">
<a href="/collection/31889797" target="_blank">内外在提升（女生）</a>
<div class="meta">
<span>4703 人关注</span>
<span class="zg-bull">&bull;</span>
<span>39 个回答</span>
</div>
</div>
</li>
</ul>
</div>
</div>   --%>             <%--最右边的热门收藏 排行榜 --%>    
<div class="shameimaru-placeholder" data-class="ExploreDownShameimaruV2" data-params='{}'></div>

<%@include file="footer.jsp" %>  <%--最下面的footer 脚注 --%>

</div>
<div class="zg-clear"></div>
</div>


<!--
<script type="text/json" class="json-inline" data-name="current_user">["\u9648\u5029","chen-qian-60-36","http:\/\/pic3.zhimg.com\/1eff9db53_s.jpg","ec4c2927ec5cbb081e372a98fd314115","\u5927\u5b66\u5b66\u751f \u8ba1\u7b97\u673a\u79d1\u5b66\u4e0e\u6280\u672f",0,1,1,"418709989@qq.com","http:\/\/mail.qq.com",1,false,false]</script>
<script type="text/json" class="json-inline" data-name="env">["zhihu.com","comet.zhihu.com",false,null]</script>
<script type="text/json" class="json-inline" data-name="permissions">[]</script>


<script type="text/json" class="json-inline" data-name="ga_vars">{"user_created":1363397919000,"now":1416494939000,"abtest_mask":"---------0--------------------","user_attr":[1,0,0,"-","-"],"user_hash":"ec4c2927ec5cbb081e372a98fd314115"}</script>

<script src="http://static.zhihu.com/static/ver/d3bb46afdac1c200e3b6de8290770e05.extern_src.min.js"></script>
<script src="http://static.zhihu.com/static/ver/60e83849ac1aa19034d292bfe55b9611.app_core.js"></script>
<script src="http://static.zhihu.com/static/ver/0366aee1761a682feb0092cf4357e07b.sign.js"></script>
<script src="http://static.zhihu.com/static/ver/62a3433114630f6afa642207283eb33f.app.js"></script>
<script src="http://static.zhihu.com/static/ver/aa2ad72dc8b09358c36c05e2d55eca78.rich_text_editor.js"></script>

<script type="text/zscript" znonce="9d8cc47293a04aefbec2cfe7f76ddbe1">
ZH.entryExplore();
</script>
-->
<input type="hidden" name="_xsrf" value="f43c64143da3005f927dc1d7c9d0ec40"/>
</body>
</html>