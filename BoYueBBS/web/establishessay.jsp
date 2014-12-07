<%-- 
    Document   : establishessay
    Created on : 2014-12-4, 22:29:39
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

<title>创建文章-泊月</title>

<meta name="apple-itunes-app" content="app-id=432274380" />



<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<meta http-equiv="mobile-agent" content="format=html5;url=http://www.zhihu.com/topic">
<meta id="znonce" name="znonce" content="16d6086f6ba440608c109f01795faf52">
<link rel="apple-touch-icon-precomposed" href="http://static.zhihu.com/static/img/ios/zhihu(57px).png" />
<link rel="apple-touch-icon-precomposed" href="http://static.zhihu.com/static/img/ios/zhihu(72px).png" sizes="72x72" />
<link rel="apple-touch-icon-precomposed" href="http://static.zhihu.com/static/img/ios/zhihu(76px).png" sizes="76x76" />
<link rel="apple-touch-icon-precomposed" href="http://static.zhihu.com/static/img/ios/zhihu(114px).png" sizes="114x114" />
<link rel="apple-touch-icon-precomposed" href="http://static.zhihu.com/static/img/ios/zhihu(120px).png" sizes="120x120" />
<link rel="apple-touch-icon-precomposed" href="http://static.zhihu.com/static/img/ios/zhihu(152px).png" sizes="152x152" />


<link rel="shortcut icon" href="#" type="image/x-icon">

<link rel="search" type="application/opensearchdescription+xml" href="http://static.zhihu.com/static/search.xml" title="知乎" />
<link rel="stylesheet" href="topics/zuzhi.css">
<link href="css/table1.css" media="screen" rel="stylesheet" type="text/css" />
<link href="css/table2.css" media="screen" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/table3.css">
<link href="css/table4.css" media="all" rel="stylesheet" type="text/css" />

<!--[if lt IE 9]>
<script src="http://static.zhihu.com/static/components/respond/dest/respond.min.js"></script>
<link href="http://static.zhihu.com/static/components/respond/cross-domain/respond-proxy.html" id="respond-proxy" rel="respond-proxy" />
<link href="/static/components/respond/cross-domain/respond.proxy.gif" id="respond-redirect" rel="respond-redirect" />
<script src="/static/components/respond/cross-domain/respond.proxy.js"></script>
<![endif]-->

<script src="http://static.zhihu.com/static/ver/c9815c35381b57c0fdc44e8d89dc4327.instant.min.js"></script>

</head>

<body class="zhi">
 <%@include file="topbbs.jsp" %>

<div class="zu-global-notify" id="zh-global-message" style="display:none">
<div class="zg-wrap">
<div class="zu-global-nitify-inner">
<a class="zu-global-notify-close" href="javascript:;" title="关闭" name="close">x</a>
<span class="zu-global-notify-icon"></span>
<span class="zu-global-notify-msg"></span>
</div>
</div>
</div>

<div class="zg-wrap zu-main js-topic-feed-page topic-feed-page">
<div class="zu-main-content">
<div class="zu-main-content-inner">
    
<div class="js-topic-feed-container topic-feed-container">
<!-- feed item start -->

  <div class="wraper">
  
<div class="flash_messages">
</div>



      <h1 align="center"><br><br>发表新帖子<br><br><br></h1>

<form accept-charset="GB2312" action="EstablishEssay" class="publish" id="new_topic" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="JvN7kFD/G1WJLZ5yLl7kyjrnumeoKpycFM1Os1MxUWM=" /></div>
  <table bgcolor="#00CD34" align="center" width="100%" border="5px" cellspacing="0" cellpadding="0">
    <colgroup><col width="140" /><col /></colgroup>
    <tr  >
  <th align=center bgcolor="#EFF4FB">文章标题</th>
  <td>
    <label>
      <input autocomplete="off" required="required" class="required" id="topic_title" maxlength="80" name="topic_title" size="60" type="text" />
      <span align=right id="title_count_notice" class="red"><br>最多输入80个字符</span>
    </label>
  </td>
</tr>
<tr>
  <th align="center" bgcolor="#EFF4FB" valign="top">文章内容</th>
  <td>
    <textarea class="required" required="required" cols="40" id="topic_body" name="topic_body" rows="20">
</textarea>
    <div class="body_count">
      <span id="topic_body_count_notice">你可以输入10000个字符</span>
    </div>
  </td>
</tr>

<!-- 暂停使用标签和标签推荐功能 http://jira.csdn.net/browse/CSDN-3110 -->


<script id="countTemplate" type="text/x-jquery-tmpl">
  你还可以输入${count}个字符
</script>


    
<tr >
  <th align="center" bgcolor="#EFF4FB">选择版块</th>
  <td> &nbsp&nbsp&nbsp
     <select required="required" id="select_topic" name="select_topic" class="required" size="1">
      <option value="">-选择话题-</option>
      <option value="xs">学术组织</option>
      <option value="xh">协会风采</option>
      <option value="science">学术</option>
      <option value="resource">资源</option>
      <option value="friend">交友</option>
      <option value="activity">活动</option>
      <option value="food">美食</option>
      <option value="work">招聘</option>
      <option value="trip">旅游</option>
      <option value="ping">拼客</option>
      <option value="join">有约</option>

    </select>
  
   
    <label class="red">请选择所要发帖的 “话题”（必选）</label>
  </td>
</tr>

<script id="selectForumTemplate" type="text/x-jquery-tmpl">
  <option value="">${notice}</option>
  {{each forums}}
    <option data-tech-forum="${$value.tech_forum}" value="${$value.urlname}" data-max-point="${$value.max_point}">${$value.name}</option>
  {{/each}}
</script>


    
    
    <tr >
      <th bgcolor="#EFF4FB">&nbsp;</th>
      <td  align="center">
        <div class="btn_area">
          <input class="btn_b submit_load_icon" name="commit" type="submit" value="发表帖子" />
        </div>
        
      </td>
    </tr>
  </table>
</form>
  </div>
   
 



<!-- feed item end -->
</div>

<a href="javascript:;" id="js-load-more" class="zg-btn-white zg-r3px zu-button-more">更多</a>

</div>
</div>
<div class="zu-main-sidebar">

<div class="instruction poster">
<a href="javascript:;" class="close-normal" data-tip="s$b$不再显示"></a>
<img src="images/topics/banner.png" alt=""></div>

<%@include file="rightTopic.jsp" %>  <%-- 右边热门话题--%>
<%@include file="footer.jsp" %>  <%--最下面的footer 脚注 --%>

</div>
<div class="zg-clear"></div>
</div>



<script type="text/json" class="json-inline" data-name="current_user">["\u9648\u5029","chen-qian-60-36","http:\/\/pic1.zhimg.com\/1eff9db53_s.jpg","ec4c2927ec5cbb081e372a98fd314115","\u5927\u5b66\u5b66\u751f \u8ba1\u7b97\u673a\u79d1\u5b66\u4e0e\u6280\u672f",0,1,1,"418709989@qq.com","http:\/\/mail.qq.com",1,false,false]</script>
<script type="text/json" class="json-inline" data-name="env">["zhihu.com","comet.zhihu.com",false,null]</script>
<script type="text/json" class="json-inline" data-name="permissions">[]</script>


<script type="text/json" class="json-inline" data-name="ga_vars">{"user_created":1363397919000,"now":1416536894000,"abtest_mask":"---------0--------------------","user_attr":[1,0,0,"-","-"],"user_hash":"ec4c2927ec5cbb081e372a98fd314115"}</script>

<script src="http://static.zhihu.com/static/ver/d3bb46afdac1c200e3b6de8290770e05.extern_src.min.js"></script>
<script src="http://static.zhihu.com/static/ver/60e83849ac1aa19034d292bfe55b9611.app_core.js"></script>
<script src="http://static.zhihu.com/static/ver/0366aee1761a682feb0092cf4357e07b.sign.js"></script>
<script src="http://static.zhihu.com/static/ver/62a3433114630f6afa642207283eb33f.app.js"></script>
<script src="http://static.zhihu.com/static/ver/aa2ad72dc8b09358c36c05e2d55eca78.rich_text_editor.js"></script>

<script type="text/zscript" znonce="16d6086f6ba440608c109f01795faf52">ZH.entryTopicFeed();</script>

<input type="hidden" name="_xsrf" value="f43c64143da3005f927dc1d7c9d0ec40"/>
</body>
</html>
