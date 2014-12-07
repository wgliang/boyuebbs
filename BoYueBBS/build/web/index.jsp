<%@page import="com.db.DbBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page language="java" pageEncoding="GB2312" %>
<%@page contentType="text/html;charset=GB2312" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>郑大泊月社区-郑州大学高知人群社区BBS</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">开启社区之旅</a>
            </div>
             <div class="search">
                <form action="">
                <input class="text" type="text" autocomplete="off" value="" placeholder=" 搜索话题、问题或人…"/>
                <input class="btn" type="submit" value="" />
                </form>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="##">首页</a>
                    </li>
                    <li>
                        <a href="zuzhi.jsp" target="_blank">组织</a>
                    </li>
                    <li>
                        <a href="topics/science.jsp" target="_blank">学术</a>
                    </li>
                    <li>
                        <a href="topics/resource.jsp" target="_blank">资源</a>
                    </li>
                    <li>
                        <a href="topics/friend.jsp" target="_blank">交友</a>
                    </li>
                    <li>
                        <a href="topics/activity.jsp" target="_blank">活动</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">娱乐<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="topics/food.jsp" target="_blank">美食</a>
                            </li>
                            <li>
                                <a href="topics/work.jsp" target="_blank">招聘</a>
                            </li>
                            <li>
                                <a href="topics/trip.jsp" target="_blank">旅游</a>
                            </li>
                            <li>
                                <a href="topics/ping.jsp" target="_blank">拼客</a>
                            </li>
                            <li>
                                <a href="topics/join.jsp" target="_blank">有约</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" >链接<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="http://www.zzu.edu.cn/" target="_blank">郑州大学官网</a>
                            </li>
                            <li>
                                <a href="http://jw.zzu.edu.cn/index.html" target="_blank">郑州大学教务首页</a>
                            </li>
                            <li>
                                <a href="http://lib.zzu.edu.cn/" target="_blank">郑州大学图书馆</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">其他 <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="full-width.html" target="_blank">Full Width Page</a>
                            </li>
                            <li>
                                <a href="sidebar.html" target="_blank">Sidebar Page</a>
                            </li>
                            <li>
                                <a href="faq.html" target="_blank">FAQ</a>
                            </li>
                            <li>
                                <a href="404.html" target="_blank">404</a>
                            </li>
                            <li>
                                <a href="pricing.html"><%=session.getAttribute("usernam")%></a>
                        </li>
                        </ul>
                    </li>
                    <li>
                        <%
                            if(session.getAttribute("username")!=null){
                        %>
                                
                         <a href="#" class="dropdown-toggle" data-toggle="dropdown"><% String username = (String)session.getAttribute("username");
                                out.print("<span>"+username+"</span>"); %> <b class="caret"></b></a>
                         <ul class="dropdown-menu">
                            <li>
                                <a href="userhome.jsp">我的主页</a>
                            </li>
                            <li>
                                <a href="blog-home-2.html">私信</a>
                            </li>
                            <li>
                                <a href="blog-post.html">设置</a>
                            </li>
                            <li>
                                <a href="blog-post.html">退出</a>
                            </li>
                        </ul>  
                          <%  }                        
                            else { %>
                                 <a href="login.jsp">登录</a>     
                          <%  } %>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Header Carousel -->
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill" style="background-image:url('images/slide1.jpg');"></div>
                <div class="carousel-caption">
                    <h2>Caption 1</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('images/slide4.jpg');"></div>
                <div class="carousel-caption">
                    <h2>Caption 2</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('images/slide3.jpg');"></div>
                <div class="carousel-caption">
                    <h2>Caption 3</h2>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>

    <!-- Page Content -->
    <div class="container">

        <!-- Marketing Icons Section -->
        <div class="row1">
            <div class="col-lg-12">
                <h1 class="page-header">
                    今日热门 
                </h1>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>话题排行</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db1 =new DbBean();
                            String sql1="select * from article order by count desc"; //：count浏览数 排序 
                            ResultSet rs1=db1.query(sql1); //rs=st.executeQuery(sql);
                            int count1=10;
                            try{
                            while((count1--)!=0&&rs1.next()){
            
                         %> 
                        <li><% String title= rs1.getString("title");
                            String data= rs1.getString("data");
                         String usename= rs1.getString("usename");
                         String text= rs1.getString("text"); %>
                            <a href="article.jsp?title=<%=java.net.URLEncoder.encode(title,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text,"UTF-8")%>" target="_blank">
                               <%
                                    String str=new String(rs1.getString("title")); //前27  文章的标题能显示到27个字，不过数字和中文宽度px不一样，就按中文的最大宽度来算的
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"…");  
                                    }else{
                                        int remainNum=27-str.length();
                                        String str2=new String(rs1.getString("title"));
                                        for(int i=0;i<remainNum;i++){
                                            str2+=" ";
                                        }
                                        out.println(str2);  
                                    }        
                                 %>
                            </a>
                        </li>
                         <% }
                            db1.close();
                          }catch(Exception e){
                                out.println(e.toString());
                          }%>    

                        <a href="topics.jsp" class="btn btn-default" target="_blank">所有话题</a>
                    </div>
                </div>
            </div>
             <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>话题动态</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db2 =new DbBean();
                            String sql2="select * from article order by data desc"; //：data浏览数 排序 
                            ResultSet rs2=db2.query(sql2); //rs=st.executeQuery(sql);
                            int count2=10;
                            try{
                            while((count2--)!=0&&rs2.next()){
            
                         %> 
                        <li>
                            <% String title= rs2.getString("title");
                                String data= rs2.getString("data");
                                 String usename= rs2.getString("usename");
                                    String text= rs2.getString("text"); %>
                            <a href="article.jsp?title=<%=java.net.URLEncoder.encode(title,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text,"UTF-8")%>" target="_blank">
                               <%
                                    String str=new String(rs2.getString("title")); //前27  文章的标题能显示到27个字，不过数字和中文宽度px不一样，就按中文的最大宽度来算的
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"…");  
                                    }else{
                                        int remainNum=27-str.length();
                                        String str2=new String(rs2.getString("title"));
                                        for(int i=0;i<remainNum;i++){
                                            str2+=" ";
                                        }
                                        out.println(str2);  
                                    }        
                                 %>
                            </a>
                        </li>
                         <% }
                            db2.close();
                          }catch(Exception e){
                                out.println(e.toString());
                          }%>    

                        <a href="#" class="btn btn-default" target="_blank">更多..</a>  <!--不知道去何方。。。-->
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i>学术动态</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db16 =new DbBean();
                            String sql16="select * from article where topicname='science' order by count desc"; //：count 浏览量 排序 
                            ResultSet rs16=db16.query(sql16); //rs=st.executeQuery(sql);
                            int count16=10;
                            try{
                            while((count16--)!=0&&rs16.next()){
            
                         %> 
                        <li>
                            <% String title= rs16.getString("title");
                                String data= rs16.getString("data");
                                 String usename= rs16.getString("usename");
                                    String text= rs16.getString("text"); %>
                            <a href="article.jsp?title=<%=java.net.URLEncoder.encode(title,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text,"UTF-8")%>" target="_blank">
                               <%
                                    String str=new String(rs16.getString("title")); //前27  文章的标题能显示到27个字，不过数字和中文宽度px不一样，就按中文的最大宽度来算的
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"…");  
                                    }else{
                                        int remainNum=27-str.length();
                                        String str2=new String(rs16.getString("title"));
                                        for(int i=0;i<remainNum;i++){
                                            str2+=" ";
                                        }
                                        out.println(str2);  
                                    }        
                                 %>
                            </a>
                        </li>
                         <% }
                            db16.close();
                          }catch(Exception e){
                                out.println(e.toString());
                          }%>    

                        <a href="topics/science.jsp" class="btn btn-default" target="_blank">更多..</a>  <!--不知道去何方。。。-->
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i>即时校事</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db17 =new DbBean();
                            String sql17="select * from article where topicname='xs' order by count desc"; //：count 浏览量 排序 
                            ResultSet rs17=db17.query(sql17); //rs=st.executeQuery(sql);
                            int count17=10;
                            try{
                            while((count17--)!=0&&rs17.next()){
            
                         %> 
                        <li>
                            <% String title= rs17.getString("title");
                                String data= rs17.getString("data");
                                 String usename= rs17.getString("usename");
                                    String text= rs17.getString("text"); %>
                            <a href="article.jsp?title=<%=java.net.URLEncoder.encode(title,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text,"UTF-8")%>" target="_blank">
                               <%
                                    String str=new String(rs17.getString("title")); //前27  文章的标题能显示到27个字，不过数字和中文宽度px不一样，就按中文的最大宽度来算的
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"…");  
                                    }else{
                                        int remainNum=27-str.length();
                                        String str2=new String(rs17.getString("title"));
                                        for(int i=0;i<remainNum;i++){
                                            str2+=" ";
                                        }
                                        out.println(str2);  
                                    }        
                                 %>
                            </a>
                        </li>
                         <% }
                            db17.close();
                          }catch(Exception e){
                                out.println(e.toString());
                          }%>    

                        <a href="topics/science.jsp" class="btn btn-default" target="_blank">更多..</a>  <!--不知道去何方。。。-->
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>最近活动</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db11 =new DbBean();
                            String sql11="select * from article where topicname='activity' order by data desc"; //：data时间 排序 
                            ResultSet rs11=db11.query(sql11); //rs=st.executeQuery(sql);
                            int count11=10;
                            try{
                            while((count11--)!=0&&rs11.next()){
            
                         %> 
                        <li>
                            <% String title= rs11.getString("title");
                                String data= rs11.getString("data");
                                 String usename= rs11.getString("usename");
                                    String text= rs11.getString("text"); %>
                            <a href="article.jsp?title=<%=java.net.URLEncoder.encode(title,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text,"UTF-8")%>" target="_blank">
                               <%
                                    String str=new String(rs11.getString("title")); //前27  文章的标题能显示到27个字，不过数字和中文宽度px不一样，就按中文的最大宽度来算的
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"…");  
                                    }else{
                                        int remainNum=27-str.length();
                                        String str2=new String(rs11.getString("title"));
                                        for(int i=0;i<remainNum;i++){
                                            str2+=" ";
                                        }
                                        out.println(str2);  
                                    }        
                                 %>
                            </a>
                        </li>
                         <% }
                            db11.close();
                          }catch(Exception e){
                                out.println(e.toString());
                          }%>    

                        <a href="topics/activity.jsp" class="btn btn-default" target="_blank">更多..</a>  <!--不知道去何方。。。-->
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-compass"></i>最新招聘</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db10 =new DbBean();
                            String sql10="select * from article where topicname='work' order by data desc"; //：data时间 排序 
                            ResultSet rs10=db10.query(sql10); //rs=st.executeQuery(sql);
                            int count10=10;
                            try{
                            while((count10--)!=0&&rs10.next()){
            
                         %> 
                        <li>
                            <% String title= rs10.getString("title");
                                String data= rs10.getString("data");
                                 String usename= rs10.getString("usename");
                                    String text= rs10.getString("text"); %>
                            <a href="article.jsp?title=<%=java.net.URLEncoder.encode(title,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text,"UTF-8")%>" target="_blank">
                               <%
                                    String str=new String(rs10.getString("title")); //前27  文章的标题能显示到27个字，不过数字和中文宽度px不一样，就按中文的最大宽度来算的
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"…");  
                                    }else{
                                        int remainNum=27-str.length();
                                        String str2=new String(rs10.getString("title"));
                                        for(int i=0;i<remainNum;i++){
                                            str2+=" ";
                                        }
                                        out.println(str2);  
                                    }        
                                 %>
                            </a>
                        </li>
                         <% }
                            db10.close();
                          }catch(Exception e){
                                out.println(e.toString());
                          }%>    

                        <a href="topics/work.jsp" class="btn btn-default" target="_blank">更多..</a>  <!--不知道去何方。。。-->
                    </div>
                </div>
            </div>
            
        </div>
        <!-- /.row -->
        <div class="lcol-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>资源动态</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db7 =new DbBean();
                            String sql7="select * from article where topicname='resource' order by count desc"; //：count 浏览量 排序 
                            ResultSet rs7=db7.query(sql7); //rs=st.executeQuery(sql);
                            int count7=14;
                            try{
                            while((count7--)!=0&&rs7.next()){
            
                         %> 
                        <li>
                            <% String title= rs7.getString("title");
                                String data= rs7.getString("data");
                                 String usename= rs7.getString("usename");
                                    String text= rs7.getString("text"); %>
                            <a href="article.jsp?title=<%=java.net.URLEncoder.encode(title,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text,"UTF-8")%>" target="_blank">
                               <%
                                    String str=new String(rs7.getString("title")); //前27  文章的标题能显示到27个字，不过数字和中文宽度px不一样，就按中文的最大宽度来算的
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"…");  
                                    }else{
                                        int remainNum=27-str.length();
                                        String str2=new String(rs7.getString("title"));
                                        for(int i=0;i<remainNum;i++){
                                            str2+=" ";
                                        }
                                        out.println(str2);  
                                    }        
                                 %>
                            </a>
                        </li>
                         <% }
                            db7.close();
                          }catch(Exception e){
                                out.println(e.toString());
                          }%>    

                        <a href="topics/resource.jsp" class="btn btn-default" target="_blank">更多..</a>  <!--不知道去何方。。。-->
                    </div>
                </div>
            </div>
        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    校园文化 
                </h1>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>学生组织</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db8 =new DbBean();
                            String sql8="select * from article where topicname='xs' order by data desc"; //：data时间 排序 
                            ResultSet rs8=db8.query(sql8); //rs=st.executeQuery(sql);
                            int count8=10;
                            try{
                            while((count8--)!=0&&rs8.next()){
            
                         %> 
                        <li>
                            <% String title= rs8.getString("title");
                                String data= rs8.getString("data");
                                 String usename= rs8.getString("usename");
                                    String text= rs8.getString("text"); %>
                            <a href="article.jsp?title=<%=java.net.URLEncoder.encode(title,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text,"UTF-8")%>" target="_blank">
                               <%
                                    String str=new String(rs8.getString("title")); //前27  文章的标题能显示到27个字，不过数字和中文宽度px不一样，就按中文的最大宽度来算的
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));     
                                          out.println(shorstr+"…");  
                                    }else{
                                        int remainNum=27-str.length();
                                        String str2=new String(rs8.getString("title"));
                                        for(int i=0;i<remainNum;i++){
                                            str2+=" ";
                            }
                                        out.println(str2);  
                                    }        
                                 %>
                            </a>
                        </li>
                         <% }
                            db8.close();
                          }catch(Exception e){
                                out.println(e.toString());
                          }%>    

                        <a href="topics/xs.jsp" class="btn btn-default" target="_blank">更多..</a>  <!--不知道去何方。。。-->
                    </div>
                </div>
            </div>
             <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>协会风采</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db9 =new DbBean();
                            String sql9="select * from article where topicname='xh' order by data desc"; //：data时间 排序 
                            ResultSet rs9=db9.query(sql9); //rs=st.executeQuery(sql);
                            int count9=10;
                            try{
                            while((count9--)!=0&&rs9.next()){
            
                         %> 
                        <li>
                            <% String title= rs9.getString("title");
                                String data= rs9.getString("data");
                                 String usename= rs9.getString("usename");
                                    String text= rs9.getString("text"); %>
                            <a href="article.jsp?title=<%=java.net.URLEncoder.encode(title,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text,"UTF-8")%>" target="_blank">
                               <%
                                    String str=new String(rs9.getString("title")); //前27  文章的标题能显示到27个字，不过数字和中文宽度px不一样，就按中文的最大宽度来算的
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"…");  
                                    }else{
                                        int remainNum=27-str.length();
                                        String str2=new String(rs9.getString("title"));
                                        for(int i=0;i<remainNum;i++){
                                            str2+=" ";
                                        }
                                        out.println(str2);  
                                    }        
                                 %>
                            </a>
                        </li>
                         <% }
                            db9.close();
                          }catch(Exception e){
                                out.println(e.toString());
                          }%>    

                        <a href="topics/xh.jsp" class="btn btn-default" target="_blank">更多..</a>  <!--不知道去何方。。。-->
                    </div>
                </div>
            </div>
            
            
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>娱乐家园</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db3 =new DbBean();
                            String sql3="select * from article where topicname='food ' or topicname='work ' or topicname='trip' or topicname='ping ' or topicname='join ' order by count desc"; //：count 浏览量 排序 
                            ResultSet rs3=db3.query(sql3); //rs=st.executeQuery(sql);
                            int count3=10;
                            try{
                            while((count3--)!=0&&rs3.next()){
            
                         %> 
                        <li>
                            <% String title= rs3.getString("title");
                                String data= rs3.getString("data");
                                 String usename= rs3.getString("usename");
                                    String text= rs3.getString("text"); %>
                            <a href="article.jsp?title=<%=java.net.URLEncoder.encode(title,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text,"UTF-8")%>" target="_blank">
                               <%
                                    String str=new String(rs3.getString("title")); //前27  文章的标题能显示到27个字，不过数字和中文宽度px不一样，就按中文的最大宽度来算的
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"…");  
                                    }else{
                                        int remainNum=27-str.length();
                                        String str2=new String(rs3.getString("title"));
                                        for(int i=0;i<remainNum;i++){
                                            str2+=" ";
                                        }
                                        out.println(str2);  
                                    }        
                                 %>
                            </a>
                        </li>
                         <% }
                            db3.close();
                          }catch(Exception e){
                                out.println(e.toString());
                          }%>    

                        <a href="#" class="btn btn-default" target="_blank">更多..</a>  <!--不知道去何方。。。-->
                    </div>
                </div>
            </div>
            
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>情感私密</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db4 =new DbBean();
                            String sql4="select * from article where topicname='friend' order by count desc"; //：count 浏览量 排序 
                            ResultSet rs4=db4.query(sql4); //rs=st.executeQuery(sql);
                            int count4=10;
                            try{
                            while((count4--)!=0&&rs4.next()){
            
                         %> 
                        <li>
                            <% String title= rs4.getString("title");
                                String data= rs4.getString("data");
                                 String usename= rs4.getString("usename");
                                    String text= rs4.getString("text"); %>
                            <a href="article.jsp?title=<%=java.net.URLEncoder.encode(title,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text,"UTF-8")%>" target="_blank">
                               <%
                                    String str=new String(rs4.getString("title")); //前27  文章的标题能显示到27个字，不过数字和中文宽度px不一样，就按中文的最大宽度来算的
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"…");  
                                    }else{
                                        int remainNum=27-str.length();
                                        String str2=new String(rs4.getString("title"));
                                        for(int i=0;i<remainNum;i++){
                                            str2+=" ";
                                        }
                                        out.println(str2);  
                                    }        
                                 %>
                            </a>
                        </li>
                         <% }
                            db4.close();
                          }catch(Exception e){
                                out.println(e.toString());
                          }%>    

                        <a href="topics/join.jsp" class="btn btn-default" target="_blank">更多..</a>  <!--不知道去何方。。。-->
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i>学术天地</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db5 =new DbBean();
                            String sql5="select * from article where topicname='science' order by count desc"; //：count 浏览量 排序 
                            ResultSet rs5=db5.query(sql5); //rs=st.executeQuery(sql);
                            int count5=10;
                            try{
                            while((count5--)!=0&&rs5.next()){
            
                         %> 
                        <li>
                            <% String title= rs5.getString("title");
                                String data= rs5.getString("data");
                                 String usename= rs5.getString("usename");
                                    String text= rs5.getString("text"); %>
                            <a href="article.jsp?title=<%=java.net.URLEncoder.encode(title,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text,"UTF-8")%>" target="_blank">
                               <%
                                    String str=new String(rs5.getString("title")); //前27  文章的标题能显示到27个字，不过数字和中文宽度px不一样，就按中文的最大宽度来算的
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"…");  
                                    }else{
                                        int remainNum=27-str.length();
                                        String str2=new String(rs5.getString("title"));
                                        for(int i=0;i<remainNum;i++){
                                            str2+=" ";
                                        }
                                        out.println(str2);  
                                    }        
                                 %>
                            </a>
                        </li>
                         <% }
                            db5.close();
                          }catch(Exception e){
                                out.println(e.toString());
                          }%>    

                        <a href="topics/science.jsp" class="btn btn-default" target="_blank">更多..</a>  <!--不知道去何方。。。-->
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>老乡情深</h4>
                    </div>
                    <div class="panel-body">
                        <li><a href="#">郑州大学郑州大学郑州大学郑州大学郑州大学郑州大学</a></li>
                        <li><a href="#">郑州大学郑州大学郑州大学郑州大学郑州大学郑州大学</a></li>
                        <li><a href="#">郑州大学郑州大学郑州大学郑州大学郑州大学郑州大学</a></li>
                        <li><a href="#">郑州大学郑州大学郑州大学郑州大学郑州大学郑州大学</a></li>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    休闲娱乐 
                </h1>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>拼客来临</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db12 =new DbBean();
                            String sql12="select * from article where topicname='ping' order by data desc"; //：data时间 排序 
                            ResultSet rs12=db12.query(sql12); //rs=st.executeQuery(sql);
                            int count12=10;
                            try{
                            while((count12--)!=0&&rs12.next()){
            
                         %> 
                        <li>
                            <% String title= rs12.getString("title");
                                String data= rs12.getString("data");
                                 String usename= rs12.getString("usename");
                                    String text= rs12.getString("text"); %>
                            <a href="article.jsp?title=<%=java.net.URLEncoder.encode(title,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text,"UTF-8")%>" target="_blank">
                               <%
                                    String str=new String(rs12.getString("title")); //前27  文章的标题能显示到27个字，不过数字和中文宽度px不一样，就按中文的最大宽度来算的
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"…");  
                                    }else{
                                        int remainNum=27-str.length();
                                        String str2=new String(rs12.getString("title"));
                                        for(int i=0;i<remainNum;i++){
                                            str2+=" ";
                                        }
                                        out.println(str2);  
                                    }        
                                 %>
                            </a>
                        </li>
                         <% }
                            db12.close();
                          }catch(Exception e){
                                out.println(e.toString());
                          }%>    

                        <a href="topics/ping.jsp" class="btn btn-default" target="_blank">更多..</a>  <!--不知道去何方。。。-->
                    </div>
                </div>
            </div>
             <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>旅游去吧</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db13 =new DbBean();
                            String sql13="select * from article where topicname='trip' order by data desc"; //：data时间 排序 
                            ResultSet rs13=db13.query(sql13); //rs=st.executeQuery(sql);
                            int count13=10;
                            try{
                            while((count13--)!=0&&rs13.next()){
            
                         %> 
                        <li>
                            <% String title= rs13.getString("title");
                                String data= rs13.getString("data");
                                 String usename= rs13.getString("usename");
                                    String text= rs13.getString("text"); %>
                            <a href="article.jsp?title=<%=java.net.URLEncoder.encode(title,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text,"UTF-8")%>" target="_blank">
                               <%
                                    String str=new String(rs13.getString("title")); //前27  文章的标题能显示到27个字，不过数字和中文宽度px不一样，就按中文的最大宽度来算的
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"…");  
                                    }else{
                                        int remainNum=27-str.length();
                                        String str2=new String(rs13.getString("title"));
                                        for(int i=0;i<remainNum;i++){
                                            str2+=" ";
                                        }
                                        out.println(str2);  
                                    }        
                                 %>
                            </a>
                        </li>
                         <% }
                            db13.close();
                          }catch(Exception e){
                                out.println(e.toString());
                          }%>    

                        <a href="topics/trip.jsp" class="btn btn-default" target="_blank">更多..</a>  <!--不知道去何方。。。-->
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>志同道合</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db14 =new DbBean();
                            String sql14="select * from article where topicname='join' order by data desc"; //：data时间 排序 
                            ResultSet rs14=db14.query(sql14); //rs=st.executeQuery(sql);
                            int count14=10;
                            try{
                            while((count14--)!=0&&rs14.next()){
            
                         %> 
                        <li><% String title= rs14.getString("title");
                                String data= rs14.getString("data");
                                 String usename= rs14.getString("usename");
                                    String text= rs14.getString("text"); %>
                            <a href="article.jsp?title=<%=java.net.URLEncoder.encode(title,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text,"UTF-8")%>" target="_blank">
                               <%
                                    String str=new String(rs14.getString("title")); //前27  文章的标题能显示到27个字，不过数字和中文宽度px不一样，就按中文的最大宽度来算的
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"…");  
                                    }else{
                                        int remainNum=27-str.length();
                                        String str2=new String(rs14.getString("title"));
                                        for(int i=0;i<remainNum;i++){
                                            str2+=" ";
                                        }
                                        out.println(str2);  
                                    }        
                                 %>
                            </a>
                        </li>
                         <% }
                            db14.close();
                          }catch(Exception e){
                                out.println(e.toString());
                          }%>    

                        <a href="topics/join.jsp" class="btn btn-default" target="_blank">更多..</a>  <!--不知道去何方。。。-->
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-compass"></i>美食郑大</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db6 =new DbBean();
                            String sql6="select * from article where topicname='food' order by count desc"; //：count 浏览量 排序 
                            ResultSet rs6=db6.query(sql6); //rs=st.executeQuery(sql);
                            int count6=10;
                            try{
                            while((count6--)!=0&&rs6.next()){
            
                         %> 
                        <li><% String title= rs6.getString("title");
                                String data= rs6.getString("data");
                                 String usename= rs6.getString("usename");
                                    String text= rs6.getString("text"); %>
                            <a href="article.jsp?title=<%=java.net.URLEncoder.encode(title,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text,"UTF-8")%>" target="_blank">
                               <%
                                    String str=new String(rs6.getString("title")); //前27  文章的标题能显示到27个字，不过数字和中文宽度px不一样，就按中文的最大宽度来算的
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"…");  
                                    }else{
                                        int remainNum=27-str.length();
                                        String str2=new String(rs6.getString("title"));
                                        for(int i=0;i<remainNum;i++){
                                            str2+=" ";
                                        }
                                        out.println(str2);  
                                    }        
                                 %>
                            </a>
                        </li>
                         <% }
                            db6.close();
                          }catch(Exception e){
                                out.println(e.toString());
                          }%>    

                        <a href="topics/food.jsp" class="btn btn-default" target="_blank">更多..</a>  <!--不知道去何方。。。-->
                    </div>
                </div>
            </div>
            

            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i>人逢知己</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db18 =new DbBean();
                            String sql18="select * from article where topicname='friend' order by count desc"; //：count 浏览量 排序 
                            ResultSet rs18=db18.query(sql18); //rs=st.executeQuery(sql);
                            int count18=10;
                            try{
                            while((count18--)!=0&&rs18.next()){
            
                         %> 
                        <li><% String title= rs18.getString("title");
                                String data= rs18.getString("data");
                                 String usename= rs18.getString("usename");
                                    String text= rs18.getString("text"); %>
                            <a href="article.jsp?title=<%=java.net.URLEncoder.encode(title,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text,"UTF-8")%>" target="_blank">
                               <%
                                    String str=new String(rs18.getString("title")); //前27  文章的标题能显示到27个字，不过数字和中文宽度px不一样，就按中文的最大宽度来算的
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"…");  
                                    }else{
                                        int remainNum=27-str.length();
                                        String str2=new String(rs18.getString("title"));
                                        for(int i=0;i<remainNum;i++){
                                            str2+=" ";
                                        }
                                        out.println(str2);  
                                    }        
                                 %>
                            </a>
                        </li>
                         <% }
                            db18.close();
                          }catch(Exception e){
                                out.println(e.toString());
                          }%>    

                        <a href="topics/science.jsp" class="btn btn-default" target="_blank">更多..</a>  <!--不知道去何方。。。-->
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-compass"></i>非诚勿扰</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db15 =new DbBean();
                            String sql15="select * from article where topicname='friend' order by data desc"; //：data时间 排序 
                            ResultSet rs15=db15.query(sql15); //rs=st.executeQuery(sql);
                            int count15=10;
                            try{
                            while((count15--)!=0&&rs15.next()){
            
                         %> 
                        <li><% String title= rs15.getString("title");
                                String data= rs15.getString("data");
                                 String usename= rs15.getString("usename");
                                    String text= rs15.getString("text"); %>
                            <a href="article.jsp?title=<%=java.net.URLEncoder.encode(title,"UTF-8")%>&data=<%=java.net.URLEncoder.encode(data,"UTF-8")%>&usename=<%=java.net.URLEncoder.encode(usename,"UTF-8")%>&text=<%=java.net.URLEncoder.encode(text,"UTF-8")%>" target="_blank">
                               <%
                                    String str=new String(rs15.getString("title")); //前27  文章的标题能显示到27个字，不过数字和中文宽度px不一样，就按中文的最大宽度来算的
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"…");  
                                    }else{
                                        int remainNum=27-str.length();
                                        String str2=new String(rs15.getString("title"));
                                        for(int i=0;i<remainNum;i++){
                                            str2+=" ";
                                        }
                                        out.println(str2);  
                                    }        
                                 %>
                            </a>
                        </li>
                         <% }
                            db15.close();
                          }catch(Exception e){
                                out.println(e.toString());
                          }%>    

                        <a href="topics/friend.jsp" class="btn btn-default" target="_blank">更多..</a>  <!--不知道去何方。。。-->
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <!-- Portfolio Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">图新鲜</h2>
            </div>
       
                     <%  DbBean db20 =new DbBean();
                     String sql20="select * from picture order by id desc"; //：data时间 排序 
                     ResultSet rs20=db20.query(sql20); //rs=st.executeQuery(sql);
                     int count20=6;
                     try{
                     while((count20--)!=0&&rs20.next()){
                     %> 
                     <div class="col-md-4 col-sm-6">
                       <a href="portfolio-item.html">
                        <%
                            String str1=new String(rs20.getString("picname")); //前27  文章的标题能显示到27个字，不过数字和中文宽度px不一样，就按中文的最大宽度来算的
                            String str2=new String(rs20.getString("pictrace"));
                        %>
                        <img class="img-responsive img-portfolio img-hover" title="<%=str1%>" src="<%=str2%>" width="360" height="285" alt="郑州大学风景">
                        <li ><center><%=str1%></center></li>
                       </a>
                     </div>
                     <% }
                        db20.close();
                        }catch(Exception e){
                             out.println(e.toString());
                        }%>    
                       <div>
                        <a href="topics/work.jsp" class="btn btn-default" target="_blank">更多..</a>  <!--不知道去何方。。。-->          
                       </div>
        <!-- /.row -->
        </div>
        
        <!-- Features Section -->
       <!-- <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Modern Business Features</h2>
            </div>
            <div class="col-md-6">
                <p>The Modern Business template by Start Bootstrap includes:</p>
                <ul>
                    <li><strong>Bootstrap v3.2.0</strong>
                    </li>
                    <li>jQuery v1.11.0</li>
                    <li>Font Awesome v4.1.0</li>
                    <li>Working PHP contact form with validation</li>
                    <li>Unstyled page elements for easy customization</li>
                    <li>17 HTML pages</li>
                </ul>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis, omnis doloremque non cum id reprehenderit, quisquam totam aspernatur tempora minima unde aliquid ea culpa sunt. Reiciendis quia dolorum ducimus unde.</p>
            </div>
            <div class="col-md-6">
                <img class="img-responsive" src="images/zzu.jpg" alt="郑州大学">
            </div>
        </div>
        <!-- /.row -->
       
        <hr>

        <!-- Call to Action Section -->
        <div class="well">
            <div class="row">
                <div class="col-md-8">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, expedita, saepe, vero rerum deleniti beatae veniam harum neque nemo praesentium cum alias asperiores commodi.</p>
                </div>
                <div class="col-md-4">
                    <a class="btn btn-lg btn-default btn-block" href="#">Call to Action</a>
                </div>
            </div>
        </div>

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &王国梁; Your Website 2014</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>

