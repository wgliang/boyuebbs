<%-- 
    Document   : xs
    Created on : 2014-11-22, 22:47:27
    Author     : chenqian
--%>

<%@page import="java.sql.ResultSet"%>
<%@page language="java" pageEncoding="GB2312" %>
<%@page contentType="text/html;charset=GB2312" %>

<!DOCTYPE html>
<html lang="zh-CN" dropEffect="none" class="no-js ">
<head>
<meta charset="utf-8" />

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="renderer" content="webkit" />

<title>����--ѧ����֯</title>

<meta name="apple-itunes-app" content="app-id=432274380" />

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<meta http-equiv="mobile-agent" content="format=html5;url=http://www.zhihu.com/">
<meta id="znonce" name="znonce" content="1224e3d6e57c4d30aa4056379ddb33b8">
<link rel="apple-touch-icon-precomposed" href="" />
<link rel="apple-touch-icon-precomposed" href="" sizes="72x72" />
<link rel="apple-touch-icon-precomposed" href="" sizes="76x76" />
<link rel="apple-touch-icon-precomposed" href="" sizes="114x114" />
<link rel="apple-touch-icon-precomposed" href="" sizes="120x120" />
<link rel="apple-touch-icon-precomposed" href="" sizes="152x152" /> <%--����Ӧ�÷�ͼ�� logo ����û��ʾ��������Ҳ���--%>


<link rel="shortcut icon" href="#" type="image/x-icon"> <!--��ҳ�������С��ʾ �ȿ��Ű� -->

<link rel="search" type="application/opensearchdescription+xml" href="http://static.zhihu.com/static/search.xml" title="����" />
<link rel="stylesheet" href="zuzhi.css">
<!-- 
<script src="http://static.zhihu.com/static/ver/c9815c35381b57c0fdc44e8d89dc4327.instant.min.js"></script>
-->
<meta property="wb:webmaster" content="8e9c4b702508b902" />

</head>

<body class="zhi">
    
    <%@include file="topbbs.jsp" %>  <%--�������һ�� --%>
    <div style="height:60px"><a href="activity.jsp"><h1 align="center">�</h1></a></div>
    
<div class="zu-global-notify" id="zh-global-message" style="display:none">
<div class="zg-wrap">
<div class="zu-global-nitify-inner">
<a class="zu-global-notify-close" href="javascript:;" title="�ر�" name="close">x</a>
<span class="zu-global-notify-icon"></span>
<span class="zu-global-notify-msg"></span>
</div>
</div>
</div>

<div class="zg-wrap zu-main page-explore">
<div class="zu-main-content">
<div class="zu-main-content-inner">


<div id="zh-recommend">
    <div id="zh-recommend-title" class="page-title">
        <i class="zg-icon zg-icon-feedlist"></i>
        <span><h1>�����Ƽ���</h1></span>
        <%--<a href="/explore/recommendations" class="zg-link-gray zg-right"><span>�����Ƽ� &raquo;</span></a>--%>
    </div>
   
    <%  DbBean db3 =new DbBean();
    String sql3="select * from article where topicname='activity'  order by count desc";
    ResultSet rs3=db3.query(sql3); //rs=st.executeQuery(sql);
    int count3=3;
    try{
      rs3.next(); 
            
    %>      
  <div id="zh-recommend-list">

<div class="top-recommend-feed feed-item">
        <h2>
            <% String title= rs3.getString("title");
            String data= rs3.getString("data");
            String usename= rs3.getString("usename");
           String text= rs3.getString("text"); %>
            <a class="question_link" target="_blank" href="../article.jsp?title=<%=java.net.URLEncoder.encode(title,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text,"UTF-8")%>"><%=rs3.getString("title")%></a>
        </h2>
        <div class="avatar">
            <a title="zxy0253" data-tip="p$t$zxy0253" class="zm-item-link-avatar" target="_blank"href="people/<%=rs3.getString("usename")%>">
             <img src="../images/head.jpg" class="zm-item-img-avatar">   <%-- ����ͷ����Ƭ----���ݿⲻ���ã��õľ�̬�� --%>
            </a>
        </div>

    <div class="feed-main">
    <div class="zm-item-answer-author-info">
            <h3 class="zm-item-answer-author-wrap">
                <a data-tip="p$t$zxy0253" href="/people/zxy0253">�û���<%=rs3.getString("usename")%></a>     <%-- �������µ��û�--%>
                 <%--<strong title="���Ÿ�������" class="zu-question-my-bio">���Ÿ�������</strong>--%>
            </h3>
        <%--<a href="javascript:;" name="collapse" class="collapse meta-item zg-right"><i class="z-icon-fold"></i>����</a> --%>
    </div>
        <div class="zm-item-rich-text" data-resourceid="1863010" data-action="/answer/content">
             <div class="summary clearfix">
             <%
         String str=new String(rs3.getString("text")); //ǰ120
       
        if(str.length()>120){      
            String shorstr=new String(str.substring(0,120));          
            out.println(shorstr);  
        }else{
            out.println(str);  
        }        
        %>��
            </div>
        </div>
    </div>
</div>

<% while((count3--)!=0&&rs3.next()){%>

    <div class="recommend-feed feed-item">
    <span class="zg-right zg-gray-normal feed-meta" ><%=rs3.getString("data")%></span>
        <h2>
            <% String title1= rs3.getString("title");
            String data1= rs3.getString("data");
            String usename1= rs3.getString("usename");
           String text1= rs3.getString("text"); %>
            <a class="question_link" target="_blank" href="../article.jsp?title=<%=java.net.URLEncoder.encode(title1,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data1,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename1,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text1,"UTF-8")%>">
                 <%=rs3.getString("title")%>
             </a>
        </h2>
    </div>
      <% }%>
</div>
   <% 
     db3.close();
        }catch(Exception e){
            out.println(e.toString());
     
         }%>
      
</div>

   <span id="new" name="new"></span>  <%-- ê --%>

<div class="explore-tab" id="js-explore-tab">
        <a class="zg-anchor-hidden" name="daily-hot"></a>
        <a class="zg-anchor-hidden" name="monthly-hot"></a>
    <ul class="tab-navs clearfix">    
        <li class="tab-nav">
        <a class="anchor" href="#new">��������</a></li>
    </ul>

<div class="tab-panel">
    <div data-type="daily">
       
<%  DbBean db1 =new DbBean();
    String sql1="select * from article where topicname='activity'order by data desc";
    ResultSet rs1=db1.query(sql1); //rs=st.executeQuery(sql);
    int count1=7;
    try{
      while((count1--)!=0&&rs1.next()){
            
    %>  
<div class="explore-feed feed-item" data-offset="5">
    <h2>
        <% String title1= rs1.getString("title");
            String data1= rs1.getString("data");
            String usename1= rs1.getString("usename");
           String text1= rs1.getString("text"); %>
            <a class="question_link" target="_blank" href="../article.jsp?title=<%=java.net.URLEncoder.encode(title1,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data1,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename1,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text1,"UTF-8")%>"><%=rs1.getString("title")%></a></h2>
<div tabindex="-1" class="zm-item-answer "
data-aid="8876753"
data-atoken="33724212"
data-collapsed="0"
data-created="1416476664"
data-deleted="0"
data-isowner="0"
data-helpful="1"
>
<a class="zg-anchor-hidden" name="answer-8876753"></a>

<div class="zm-item-vote">
<a name="expand" class="zm-item-vote-count" href="javascript:;" data-votecount="<%=rs1.getString("count")%>"><%=rs1.getString("count")%></a>
</div>

<div class="answer-head">

<div class="zm-item-answer-author-info">
<h3 class="zm-item-answer-author-wrap">


<a data-tip="p$t$xia-ji-ji-28" href="people/"><%=rs1.getString("usename")%></a>

</h3>

</div>

<div class="zm-item-vote-info " data-votecount="<%=rs1.getString("count")%>">


</div>
</div>
<div class="zm-item-rich-text" data-resourceid="2837926" data-action="/answer/content">

<textarea class="content hidden">
    <%=rs1.getString("text")%>

</textarea>
    
<div class="zh-summary summary clearfix">
    <img src="../images/topics/inarticle.jpg" data-rawwidth="400" data-rawheight="416" class="origin_image inline-img zh-lightbox-thumb" data-original="../images/topics/inarticle2.jpg">
        <%
         String str=new String(rs1.getString("text")); //ǰ120
       
        if(str.length()>120){      
            String shorstr=new String(str.substring(0,120));          
            out.println(shorstr);  
        }else{
            out.println(str);  
        }        
        %>��

<a href="../article.jsp?title=<%=java.net.URLEncoder.encode(title1,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data1,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename1,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text1,"UTF-8")%>" class="toggle-expand">��ʾȫ��</a>

</div>

</div>
<div class="zm-item-meta zm-item-comment-el answer-actions clearfix">
<div class="zm-meta-panel">

            <a data-follow="q:link" class="follow-link zg-follow meta-item" href="" id="sfb-2837926">
                <i class="z-icon-follow">
    
        </i>��ע����</a>


<i class="z-icon-comment"></i><%=rs1.getString("count")%> �����</a>


<i class="z-icon-comment"></i>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<%=rs1.getString("data")%>

<span class="zg-bull zu-autohide">&bull;</span>



<span class="zg-bull zu-autohide">&bull;</span>


<span class="copyright zu-autohide"></span>

</div>

</div>
</div>
</div>
     
        
        <% }
     db1.close();
        }catch(Exception e){
            out.println(e.toString());
     
         }%>    
    </div>
</div>

</div>
</div>
</div>
<div class="zu-main-sidebar">
<div class="shameimaru-placeholder" data-class="ExploreUpShameimaruV2" data-params='{}'></div>

     <%@include file="rightTopic.jsp" %>  <%--���ұߵ����Ż��� ���а� --%>
     <%--
<div class="zm-side-section explore-side-section">
<div class="zm-side-section-inner">
<div class="section-title">
<a href="javascript:;" id="js-hot-fav-switch" class="zg-link-gray zg-right">��һ��</a>
<h3>�����ղ�</h3>
</div>
<ul class="list hot-favlists">
<li>
<div class="content">
<a href="/collection/31550689" target="_blank">�������ܴ�</a>
<div class="meta">
<span>2770 �˹�ע</span>
<span class="zg-bull">&bull;</span>
<span>182 ���ش�</span>
</div>
</div>
</li>

<li>
<div class="content">
<a href="/collection/20160931" target="_blank">��Щ�������ҿ������������</a>
<div class="meta">
<span>795 �˹�ע</span>
<span class="zg-bull">&bull;</span>
<span>103 ���ش�</span>
</div>
</div>
</li>

<li>
<div class="content">
<a href="/collection/25563994" target="_blank">�۾��ʴ�</a>
<div class="meta">
<span>1864 �˹�ע</span>
<span class="zg-bull">&bull;</span>
<span>262 ���ش�</span>
</div>
</div>
</li>

<li>
<div class="content">
<a href="/collection/39688250" target="_blank">���＼����أ����弰��ֲ�</a>
<div class="meta">
<span>28 �˹�ע</span>
<span class="zg-bull">&bull;</span>
<span>25 ���ش�</span>
</div>
</div>
</li>

<li>
<div class="content">
<a href="/collection/31889797" target="_blank">������������Ů����</a>
<div class="meta">
<span>4703 �˹�ע</span>
<span class="zg-bull">&bull;</span>
<span>39 ���ش�</span>
</div>
</div>
</li>
</ul>
</div>
</div>   --%>             <%--���ұߵ������ղ� ���а� --%>    
<div class="shameimaru-placeholder" data-class="ExploreDownShameimaruV2" data-params='{}'></div>

<%@include file="footer.jsp" %>  <%--�������footer ��ע --%>

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