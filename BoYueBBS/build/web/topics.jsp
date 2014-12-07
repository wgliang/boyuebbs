<%-- 
    Document   : topics
    Created on : 2014-11-21, 10:29:36
    Author     : chenqian
--%>

<%@page language="java" pageEncoding="GB2312" %>
<%@page contentType="text/html;charset=GB2312" %>

<!DOCTYPE html>
<html lang="zh-CN" dropEffect="none" class="no-js ">
<head>
<meta charset="GB2312" />

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="renderer" content="webkit" />

<title>话题动态-泊月</title>

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
    <div class="topic-feed-title">
    <i class="zg-icon zg-icon-feedlist"></i>
        <span>话题动态</span>
           <a href="#" class="zg-link-gray zg-right">
         <span class="">
              共<% DbBean db1=new DbBean();
             String sql1="select topic_id from topic order by topic_id desc";
             ResultSet rs1=db1.query(sql1);
             rs1.next();
             out.println(rs1.getString("topic_id"));
              %> 个话题
        </span>
    </a>
    </div>
<div class="js-topic-feed-container topic-feed-container">
<!-- feed item start -->
<%--
 <%  DbBean db3 =new DbBean();
    String sql3="select topic_nameom topic order by topic_id ";
    ResultSet rs3=db3.query(sql3); //rs=st.executeQuery(sql);
    int count3=Integer.parseInt(rs1.getString("topic_id"));
    try{
        while((count3--)!=.next()){     
            
  %>


<div class="js-topic-item topic-item zg-clear" id="tf-740" data-id="740">
   
    <div class="topic-avatar">
        <a href="topics/<%=rs3.getString("topic_name")%>.jsp">
        <img class="topic-avatar-img" src="images/topics/<%=rs3.getString("topic_name")%>.jpg" alt=""></a>
    </div>
</div>
     <div class="topic-item-content">
            <div>
                <h3 class="topic-item-title"><a class="topic-item-title-link" href="/topic/19552430"> <%=rs3.getString("topic_chinese")%></a></h3>
            </div>

    <div class="topic-item-feed-digest">
      
        <%
     
         String articleName=rs3.getString("topic_name");
        DbBean db2=new DbBean();
        String sql2="select title,topicname from article_"+articleName+" where topicname=\""+articleName+"\" order by data desc";
         ResultSet rs2=db2.query(sql2); //rs=st.executeQuery(sql);
         int count2=3;
          try{
              while((count2--)!=0&&rs3.next()){  
         %>
        <div class="topic-feed-item">
        <a href="topics/<%=rs2.getString("topicname")%>/<%=rs2.getString("id")%>"><%=rs2.getString("title")%></a>
            <span class="zg-gray time">26 秒前</span>
        </div>
         <% }
              db2.close();
          }catch(Exception e){
            out.println(e.toString());
     
         }
         %>
        </div> 
     </div > 
  <% }
     db3.close();
        }catch(Exception e){
            out.println(e.toString());
     
         }%>
--%>
         
         
 <%  DbBean db3 =new DbBean();
    String sql3="select topic_name,topic_chinese,topic_count from topic order by topic_id ";
    ResultSet rs3=db3.query(sql3); //rs=st.executeQuery(sql);
    int count3=Integer.parseInt(rs1.getString("topic_id"));
    try{
        while((count3--)!=0&&rs3.next()){     
            
  %>
  
<div class="js-topic-item topic-item zg-clear" id="tf-99" data-id="99">
    <div class="topic-avatar">
        <a href="topics/<%=rs3.getString("topic_name")%>.jsp">
        <img class="topic-avatar-img" src="images/topics/<%=rs3.getString("topic_name")%>.jpg" alt=""></a>
    </div>
    <div class="topic-item-content">
            <div>
                <h3 class="topic-item-title"><a class="topic-item-title-link" href="topics/<%=rs3.getString("topic_name")%>.jsp"> <%=rs3.getString("topic_chinese")%></a></h3>
            </div>   
    

   <div class="topic-item-feed-digest">
      
        <%
     
         String articleName=rs3.getString("topic_name");
        DbBean db2=new DbBean();
        String sql2="select * from article_"+articleName+" order by data desc";
         ResultSet rs2=db2.query(sql2); //rs=st.executeQuery(sql);
         int count2=3;
          try{
              while((count2--)!=0&&rs2.next()){  
         %>
        <div class="topic-feed-item">
            
            <% String title= rs2.getString("title");
            String data= rs2.getString("data");
            String usename= rs2.getString("usename");
           String text= rs2.getString("text"); %>
            <a href="article.jsp?title=<%=java.net.URLEncoder.encode(title,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text,"UTF-8")%>" target="_blank">
                <%=rs2.getString("title")%>
               </a> 
      
            <span class="zg-gray time"><%=rs2.getString("data")%></span>
        </div> 
         <% }
              db2.close();
          }catch(Exception e){
            out.println(e.toString());
     
         }
         %>
        </div> 

    </div>
</div>
  <% }
     db3.close();
        }catch(Exception e){
            out.println(e.toString());
     
         }%>



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
