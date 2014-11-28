<%-- 
    Document   : zuzhitopic
    Created on : 2014-11-22, 11:53:42
    Author     : chenqian
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.db.DbBean"%>
<%@page language="java" pageEncoding="GB2312" %>
<%@page contentType="text/html;charset=GB2312" %>
<!DOCTYPE html>
<html lang="zh-CN" dropEffect="none" class="no-js ">
<head>
<meta charset="utf-8" />

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="renderer" content="webkit" />

<title>泊月--话题</title>

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
<link rel="stylesheet" href="css/zuzhi.css">

<script src="http://static.zhihu.com/static/ver/c9815c35381b57c0fdc44e8d89dc4327.instant.min.js"></script>

<meta property="wb:webmaster" content="8e9c4b702508b902" />

</head>
    <body>
    
        <div class="zm-side-section explore-side-section">
        <div class="zm-side-section-inner">
        <div class="section-title">

            <a href="../topics.jsp" class="zg-link-gray zg-right">更多话题 &raquo;</a>

            <h3>热门话题</h3>
        </div>
        <ul class="list hot-topics">
<%  DbBean db =new DbBean();
    String sql="select topic_name,topic_chinese,topic_count from topic order by topic_count desc ";
    ResultSet rs=db.query(sql); //rs=st.executeQuery(sql);
    int count=5; 
    try{
        while((count--)!=0&&rs.next()){     
            
  %>
<li class="clearfix">
    <a target="_blank" class="avatar-link" href="<%=rs.getString("topic_name")%>.jsp" data-tip="t$b$19781331">
     <img src="../images/topics/<%=rs.getString("topic_name")%>.jpg" alt="<%=rs.getString("topic_name")%>" class="avatar 40" /></a>
            <div class="content">
                 <a href="<%=rs.getString("topic_name")%>.jsp" target="_blank" data-tip="t$b$19781331">
                     <%=rs.getString("topic_chinese")%>
                 </a>
                    <div class="meta">
                     <span><%=rs.getString("topic_count")%> 条关注</span>
                    </div>
            </div>
    <div class="bottom">
         <%
         response.setContentType("text/html;charset=GB2312");
         request.setCharacterEncoding("gb2312");
         String articleName=rs.getString("topic_name");
 
        DbBean db2=new DbBean();
        String sql2="select title,id,topicname from article_"+articleName+" where topicname=\""+articleName+"\" order by count desc";
         ResultSet rs2=db2.query(sql2); //rs=st.executeQuery(sql);
         rs2.next();
         %>
        <a class="question_link" target="_blank" href="<%=rs2.getString("topicname")%>/<%=rs2.getString("id")%>.jsp"><%=rs2.getString("title")%></a>
        <% db2.close();%>
    </div>
    </li>
    <% }
        db.close();
        }catch(Exception e){
            out.println(e.toString());
     
    }%>


    </ul>
    </div>
        </div>
    </body>
</html>
