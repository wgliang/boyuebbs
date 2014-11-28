<%-- 
    Document   : topbbs
    Created on : 2014-11-21, 10:06:28
    Author     : chenqian
--%>
<%@page language="java" pageEncoding="GB2312" %>
<%@page contentType="text/html;charset=GB2312" %>
<!DOCTYPE html>
<html lang="zh-CN" dropEffect="none" class="no-js ">
<head>
<meta charset="utf-8" />

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="renderer" content="webkit" />

<title>泊月--组织</title>

<meta name="apple-itunes-app" content="app-id=432274380" />

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<meta http-equiv="mobile-agent" content="format=html5;url=http://www.zhihu.com/">
<meta id="znonce" name="znonce" content="1224e3d6e57c4d30aa4056379ddb33b8">
<link rel="apple-touch-icon-precomposed" href="http://static.zhihu.com/static/img/ios/zhihu(57px).png" />
<link rel="apple-touch-icon-precomposed" href="http://static.zhihu.com/static/img/ios/zhihu(72px).png" sizes="72x72" />
<link rel="apple-touch-icon-precomposed" href="http://static.zhihu.com/static/img/ios/zhihu(76px).png" sizes="76x76" />
<link rel="apple-touch-icon-precomposed" href="http://static.zhihu.com/static/img/ios/zhihu(114px).png" sizes="114x114" />
<link rel="apple-touch-icon-precomposed" href="http://static.zhihu.com/static/img/ios/zhihu(120px).png" sizes="120x120" />
<link rel="apple-touch-icon-precomposed" href="http://static.zhihu.com/static/img/ios/zhihu(152px).png" sizes="152x152" />


<link rel="shortcut icon" href="#" type="image/x-icon"> <!--主页最上面的小标示 先空着吧 -->

<link rel="search" type="application/opensearchdescription+xml" href="http://static.zhihu.com/static/search.xml" title="泊月" />
<link rel="stylesheet" href="topics/zuzhi.css">

<script src="http://static.zhihu.com/static/ver/c9815c35381b57c0fdc44e8d89dc4327.instant.min.js"></script>

<meta property="wb:webmaster" content="8e9c4b702508b902" />

</head>

<body class="zhi">
    
<div role="navigation" class="zu-top">
<div class="zg-wrap" id="zh-top-inner"><%-- class="zg-wrap" 不同页面可以改不同图像 不过没改成功，不知道为什么--%>
<%--<a href="" class="zuzhi-top-link-logo" id="zuzhi-top-link-logo">泊月</a>--%>
 <li class="zu-top-nav-li current" id="zh-top-home-link">
        <a class="zu-top-nav-name" href="index.jsp" id="zh-top-link-home">泊月</a>
    </li>

<%-- class="zuzhi-top-link-logo" 不同页面可以改不同图像    不过没改成功，不知道为什么--%>
<div class="top-nav-profile">
           <%
           if(session.getAttribute("usernam")!=null){
             %>    <a href="peopleindex.jsp" class="zu-top-nav-userinfo "><%-- peopleindex.jsp 到个人主页去--%>

    <span class="name"><% String uesrname = (String)session.getAttribute("usernam");
                       out.print("<span>"+uesrname+"</span>"); %> </span>
    <% String srcdb=(String)session.getAttribute("head");%>
    <img class="avatar" src="<%=srcdb%>" alt="images" />         <%--从数据库读头像上来 --%>
    <span id="zh-top-nav-new-pm" class="zg-noti-number zu-top-nav-pm-count"
    style="visibility:hidden" data-count="0">
    </span>
    </a>
    <ul class="top-nav-dropdown" id="top-nav-profile-dropdown">
    <li>
        <a href="/people/chen-qian-60-36">
        <i class="zg-icon zg-icon-dd-home"></i>我的主页
        </a>
    </li>

    <li>
         <a href="/inbox">
            <i class="zg-icon zg-icon-dd-pm"></i>私信
             <span id="zh-top-nav-pm-count" class="zu-top-nav-pm-count zg-noti-number"
             style="visibility:hidden" data-count="0">

            </span>
          </a>
      </li>
    <li>
        <a href="/settings">
             <i class="zg-icon zg-icon-dd-settings"></i>设置
        </a>
    </li>
    <li>
        <a href="/logout">
         <i class="zg-icon zg-icon-dd-logout"></i>退出
         </a>
    </li>
    </ul>
 <%  }                        
       else { %>
            <a href="login.jsp" class="zu-top-nav-userinfo ">

    <span class="name">登录</span>
   
    <span id="zh-top-nav-new-pm" class="zg-noti-number zu-top-nav-pm-count"
    style="visibility:hidden" data-count="0">

    </span>
    </a>
           <%  } %>
</div>


<div role="search" id="zh-top-search" class="zu-top-search">
<form method="GET" action="/search" id="zh-top-search-form" class="zu-top-search-form form-with-magnify">

<input type="text" class="zu-top-search-input" id="q" name="q" autocomplete="off" value="" placeholder="搜索话题、问题或人…" />
<input type="hidden" name="type" value="question" />
<label for="q" class="hide-text">泊月搜索</label>
<button type="submit" class="magnify-button"><i class="icon icon-magnify-q"></i><span class="hide-text">搜索</span></button>
</form>
<button class="zu-top-add-question" id="zu-top-add-question">搜索</button>
</div>   <%--搜索 --%>



<div id="zg-top-nav" class="zu-top-nav">
    <ul class="zu-top-nav-ul zg-clear">

    <li class="zu-top-nav-li current" id="zh-top-home-link">
        <a class="zu-top-nav-link" href="index.jsp" id="zh-top-link-home">泊月首页</a>
    </li>
    <li class="top-nav-topic-selector zu-top-nav-li " id="zh-top-nav-item-topic">
        <a class="zu-top-nav-link" href="topics.jsp" id="top-nav-dd-topic">全部话题</a>

    </li>
    <li class="top-nav-topic-selector zu-top-nav-li " id="zh-top-nav-item-topic">
        <a class="zu-top-nav-link" href="topics.jsp" id="top-nav-dd-topic">发现</a>

    </li>
   
</ul>
 
    <div class="zu-top-nav-live zu-noti7-popup zg-r5px no-hovercard" id="zh-top-nav-live-new" role="popup" tabindex="0">
<div class="zu-top-nav-live-inner zg-r5px">
<div class="zu-top-live-icon">&nbsp;</div>
<div class="zu-home-noti-inner" id="zh-top-nav-live-new-inner">
<div class="zm-noti7-popup-tab-container clearfix" tabindex="0">
<button class="zm-noti7-popup-tab-item message">
<span class="icon">消息</span>
<span class="new-noti" style="display:none;">0</span>
</button>
<button class="zm-noti7-popup-tab-item user">
<span class="icon">用户</span>
<span class="new-noti" style="display:none;">0</span>
</button>
<button class="zm-noti7-popup-tab-item thanks">
<span class="icon">赞同和感谢</span>
<span class="new-noti" style="display:none;">0</span>
</button>
</div>
</div>
<div class="zm-noti7-frame-border top"></div>
<div class="zm-noti7-frame">
<div class="zm-noti7-content">
<div class="zm-noti7-content-inner">
<div class="zm-noti7-popup-refresh" style="display:none;">
<img class="noti-spinner" src="/static/img/spinner2.gif" />
</div>
<div class="zm-noti7-content-body">
<div class="zm-noti7-popup-loading">
<img class="noti-spinner" src="/static/img/noti-loading.gif" />
</div>
</div>
</div>
</div>
<div class="zm-noti7-content" style="display:none;">
<div class="zm-noti7-content-inner">
<div class="zm-noti7-popup-refresh" style="display:none;">
<img class="noti-spinner" src="/static/img/spinner2.gif" />
</div>
<div class="zm-noti7-content-body">
<div class="zm-noti7-popup-loading">
<img class="noti-spinner" src="/static/img/noti-loading.gif" />
</div>
</div>
</div>
</div>
<div class="zm-noti7-content" style="display:none;">
<div class="zm-noti7-content-inner">
<div class="zm-noti7-popup-refresh" style="display:none;">
<img class="noti-spinner" src="/static/img/spinner2.gif" />
</div>
<div class="zm-noti7-content-body">
<div class="zm-noti7-popup-loading">
<img class="noti-spinner" src="/static/img/noti-loading.gif" />
</div>
</div>
</div>
</div>
</div>
<div class="zm-noti7-frame-border bottom"></div>
<div class="zm-noti7-popup-footer">
<a href="/notifications" class="zm-noti7-popup-footer-all zg-right">查看全部 &raquo;</a>
<a href="/settings/notification" class="zm-noti7-popup-footer-set" title="通知设置" ><i class="zg-icon zg-icon-settings"></i></a>
</div>
</div>
</div>

</div>


</div>
</div>
    </body>
</html>
