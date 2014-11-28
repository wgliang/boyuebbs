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

    <title>֣��������-֣�ݴ�ѧ��֪��Ⱥ����BBS</title>

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
                <a class="navbar-brand" href="index.html">��������֮��</a>
            </div>
             <div class="search">
                <form action="">
                <input class="text" type="text" value="   �������⡢���ֻ���" />
                <input class="btn" type="submit" value="" />
                </form>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="##">��ҳ</a>
                    </li>
                    <li>
                        <a href="zuzhi.jsp" target="_blank">��֯</a>
                    </li>
                    <li>
                        <a href="topics/science.jsp" target="_blank">ѧ��</a>
                    </li>
                    <li>
                        <a href="topics/resource.jsp" target="_blank">��Դ</a>
                    </li>
                    <li>
                        <a href="topics/friend.jsp" target="_blank">����</a>
                    </li>
                    <li>
                        <a href="topics/activity.jsp" target="_blank">�</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">����<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="topics/food.jsp" target="_blank">��ʳ</a>
                            </li>
                            <li>
                                <a href="topics/work.jsp" target="_blank">��Ƹ</a>
                            </li>
                            <li>
                                <a href="topics/trip.jsp" target="_blank">����</a>
                            </li>
                            <li>
                                <a href="topics/ping.jsp" target="_blank">ƴ��</a>
                            </li>
                            <li>
                                <a href="topics/join.jsp" target="_blank">��Լ</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" >���� <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="blog-home-1.html" target="_blank">Blog Home 1</a>
                            </li>
                            <li>
                                <a href="blog-home-2.html" target="_blank">Blog Home 2</a>
                            </li>
                            <li>
                                <a href="blog-post.html" target="_blank">Blog Post</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">���� <b class="caret"></b></a>
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
                            if(session.getAttribute("usernam")!=null){
                        %>
                                
                         <a href="#" class="dropdown-toggle" data-toggle="dropdown"><% String uesrname = (String)session.getAttribute("usernam");
                                out.print("<span>"+uesrname+"</span>"); %> <b class="caret"></b></a>
                         <ul class="dropdown-menu">
                            <li>
                                <a href="blog-home-1.html">�ҵ���ҳ</a>
                            </li>
                            <li>
                                <a href="blog-home-2.html">˽��</a>
                            </li>
                            <li>
                                <a href="blog-post.html">����</a>
                            </li>
                            <li>
                                <a href="blog-post.html">�˳�</a>
                            </li>
                        </ul>  
                          <%  }                        
                            else { %>
                                 <a href="login.jsp">��¼</a>     
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
                <div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide One');"></div>
                <div class="carousel-caption">
                    <h2>Caption 1</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide Two');"></div>
                <div class="carousel-caption">
                    <h2>Caption 2</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide Three');"></div>
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
                    �������Ż��� 
                </h1>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>��������</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db1 =new DbBean();
                            String sql1="select * from article order by count desc"; //��count����� ���� 
                            ResultSet rs1=db1.query(sql1); //rs=st.executeQuery(sql);
                            int count1=4;
                            try{
                            while((count1--)!=0&&rs1.next()){
            
                         %> 
                        <li>
                            <a href="topics/<%=rs1.getString("topicname")%>/<%=rs1.getString("id")%>.jsp" target="_blank">
                               <%
                                    String str=new String(rs1.getString("title")); //ǰ27  ���µı�������ʾ��27���֣��������ֺ����Ŀ��px��һ�����Ͱ����ĵ�����������
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"��");  
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

                        <a href="topics.jsp" class="btn btn-default" target="_blank">���л���</a>
                    </div>
                </div>
            </div>
             <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>��������</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db2 =new DbBean();
                            String sql2="select * from article order by data desc"; //��data����� ���� 
                            ResultSet rs2=db2.query(sql2); //rs=st.executeQuery(sql);
                            int count2=4;
                            try{
                            while((count2--)!=0&&rs2.next()){
            
                         %> 
                        <li>
                            <a href="topics/<%=rs2.getString("topicname")%>/<%=rs2.getString("id")%>.jsp" target="_blank">
                               <%
                                    String str=new String(rs2.getString("title")); //ǰ27  ���µı�������ʾ��27���֣��������ֺ����Ŀ��px��һ�����Ͱ����ĵ�����������
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"��");  
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

                        <a href="#" class="btn btn-default" target="_blank">����..</a>  <!--��֪��ȥ�η�������-->
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>���ּ�԰</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db3 =new DbBean();
                            String sql3="select * from article where topicname='food ' or topicname='work ' or topicname='trip' or topicname='ping ' or topicname='join ' order by count desc"; //��count ����� ���� 
                            ResultSet rs3=db3.query(sql3); //rs=st.executeQuery(sql);
                            int count3=4;
                            try{
                            while((count3--)!=0&&rs3.next()){
            
                         %> 
                        <li>
                            <a href="topics/<%=rs3.getString("topicname")%>/<%=rs3.getString("id")%>.jsp" target="_blank">
                               <%
                                    String str=new String(rs3.getString("title")); //ǰ27  ���µı�������ʾ��27���֣��������ֺ����Ŀ��px��һ�����Ͱ����ĵ�����������
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"��");  
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

                        <a href="#" class="btn btn-default" target="_blank">����..</a>  <!--��֪��ȥ�η�������-->
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>���˽��</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db4 =new DbBean();
                            String sql4="select * from article where topicname='join ' order by count desc"; //��count ����� ���� 
                            ResultSet rs4=db4.query(sql4); //rs=st.executeQuery(sql);
                            int count4=4;
                            try{
                            while((count4--)!=0&&rs4.next()){
            
                         %> 
                        <li>
                            <a href="topics/<%=rs4.getString("topicname")%>/<%=rs4.getString("id")%>.jsp" target="_blank">
                               <%
                                    String str=new String(rs4.getString("title")); //ǰ27  ���µı�������ʾ��27���֣��������ֺ����Ŀ��px��һ�����Ͱ����ĵ�����������
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"��");  
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

                        <a href="topics/join.jsp" class="btn btn-default" target="_blank">����..</a>  <!--��֪��ȥ�η�������-->
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i>ѧ�����</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db5 =new DbBean();
                            String sql5="select * from article where topicname='science' order by count desc"; //��count ����� ���� 
                            ResultSet rs5=db5.query(sql5); //rs=st.executeQuery(sql);
                            int count5=4;
                            try{
                            while((count5--)!=0&&rs5.next()){
            
                         %> 
                        <li>
                            <a href="topics/<%=rs5.getString("topicname")%>/<%=rs5.getString("id")%>.jsp" target="_blank">
                               <%
                                    String str=new String(rs5.getString("title")); //ǰ27  ���µı�������ʾ��27���֣��������ֺ����Ŀ��px��һ�����Ͱ����ĵ�����������
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"��");  
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

                        <a href="topics/science.jsp" class="btn btn-default" target="_blank">����..</a>  <!--��֪��ȥ�η�������-->
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-compass"></i>��ʳ����</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db6 =new DbBean();
                            String sql6="select * from article where topicname='food' order by count desc"; //��count ����� ���� 
                            ResultSet rs6=db6.query(sql6); //rs=st.executeQuery(sql);
                            int count6=4;
                            try{
                            while((count6--)!=0&&rs6.next()){
            
                         %> 
                        <li>
                            <a href="topics/<%=rs6.getString("topicname")%>/<%=rs6.getString("id")%>.jsp" target="_blank">
                               <%
                                    String str=new String(rs6.getString("title")); //ǰ27  ���µı�������ʾ��27���֣��������ֺ����Ŀ��px��һ�����Ͱ����ĵ�����������
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"��");  
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

                        <a href="topics/food.jsp" class="btn btn-default" target="_blank">����..</a>  <!--��֪��ȥ�η�������-->
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <div class="lcol-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>������Դ</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db7 =new DbBean();
                            String sql7="select * from article where topicname='resource' order by count desc"; //��count ����� ���� 
                            ResultSet rs7=db7.query(sql7); //rs=st.executeQuery(sql);
                            int count7=14;
                            try{
                            while((count7--)!=0&&rs7.next()){
            
                         %> 
                        <li>
                            <a href="topics/<%=rs7.getString("topicname")%>/<%=rs7.getString("id")%>.jsp" target="_blank">
                               <%
                                    String str=new String(rs7.getString("title")); //ǰ27  ���µı�������ʾ��27���֣��������ֺ����Ŀ��px��һ�����Ͱ����ĵ�����������
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"��");  
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

                        <a href="topics/resource.jsp" class="btn btn-default" target="_blank">����..</a>  <!--��֪��ȥ�η�������-->
                    </div>
                </div>
            </div>
        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    ���» 
                </h1>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>ѧ����֯</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db8 =new DbBean();
                            String sql8="select * from article where topicname='xs' order by data desc"; //��dataʱ�� ���� 
                            ResultSet rs8=db8.query(sql8); //rs=st.executeQuery(sql);
                            int count8=4;
                            try{
                            while((count8--)!=0&&rs8.next()){
            
                         %> 
                        <li>
                            <a href="topics/<%=rs8.getString("topicname")%>/<%=rs8.getString("id")%>.jsp" target="_blank">
                               <%
                                    String str=new String(rs8.getString("title")); //ǰ27  ���µı�������ʾ��27���֣��������ֺ����Ŀ��px��һ�����Ͱ����ĵ�����������
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"��");  
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

                        <a href="topics/xs.jsp" class="btn btn-default" target="_blank">����..</a>  <!--��֪��ȥ�η�������-->
                    </div>
                </div>
            </div>
             <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>Э����</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db9 =new DbBean();
                            String sql9="select * from article where topicname='xh' order by data desc"; //��dataʱ�� ���� 
                            ResultSet rs9=db9.query(sql9); //rs=st.executeQuery(sql);
                            int count9=4;
                            try{
                            while((count9--)!=0&&rs9.next()){
            
                         %> 
                        <li>
                            <a href="topics/<%=rs9.getString("topicname")%>/<%=rs9.getString("id")%>.jsp" target="_blank">
                               <%
                                    String str=new String(rs9.getString("title")); //ǰ27  ���µı�������ʾ��27���֣��������ֺ����Ŀ��px��һ�����Ͱ����ĵ�����������
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"��");  
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

                        <a href="topics/xh.jsp" class="btn btn-default" target="_blank">����..</a>  <!--��֪��ȥ�η�������-->
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>�������</h4>
                    </div>
                    <div class="panel-body">
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>����</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db11 =new DbBean();
                            String sql11="select * from article where topicname='activity' order by data desc"; //��dataʱ�� ���� 
                            ResultSet rs11=db11.query(sql11); //rs=st.executeQuery(sql);
                            int count11=4;
                            try{
                            while((count11--)!=0&&rs11.next()){
            
                         %> 
                        <li>
                            <a href="topics/<%=rs11.getString("topicname")%>/<%=rs11.getString("id")%>.jsp" target="_blank">
                               <%
                                    String str=new String(rs11.getString("title")); //ǰ27  ���µı�������ʾ��27���֣��������ֺ����Ŀ��px��һ�����Ͱ����ĵ�����������
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"��");  
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

                        <a href="topics/activity.jsp" class="btn btn-default" target="_blank">����..</a>  <!--��֪��ȥ�η�������-->
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i>��������</h4>
                    </div>
                    <div class="panel-body">
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-compass"></i>������Ƹ</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db10 =new DbBean();
                            String sql10="select * from article where topicname='work' order by data desc"; //��dataʱ�� ���� 
                            ResultSet rs10=db10.query(sql10); //rs=st.executeQuery(sql);
                            int count10=4;
                            try{
                            while((count10--)!=0&&rs10.next()){
            
                         %> 
                        <li>
                            <a href="topics/<%=rs10.getString("topicname")%>/<%=rs10.getString("id")%>.jsp" target="_blank">
                               <%
                                    String str=new String(rs10.getString("title")); //ǰ27  ���µı�������ʾ��27���֣��������ֺ����Ŀ��px��һ�����Ͱ����ĵ�����������
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"��");  
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

                        <a href="topics/work.jsp" class="btn btn-default" target="_blank">����..</a>  <!--��֪��ȥ�η�������-->
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    ƴ��Լ�� 
                </h1>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>ƴ������</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db12 =new DbBean();
                            String sql12="select * from article where topicname='ping' order by data desc"; //��dataʱ�� ���� 
                            ResultSet rs12=db12.query(sql12); //rs=st.executeQuery(sql);
                            int count12=4;
                            try{
                            while((count12--)!=0&&rs12.next()){
            
                         %> 
                        <li>
                            <a href="topics/<%=rs12.getString("topicname")%>/<%=rs12.getString("id")%>.jsp" target="_blank">
                               <%
                                    String str=new String(rs12.getString("title")); //ǰ27  ���µı�������ʾ��27���֣��������ֺ����Ŀ��px��һ�����Ͱ����ĵ�����������
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"��");  
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

                        <a href="topics/ping.jsp" class="btn btn-default" target="_blank">����..</a>  <!--��֪��ȥ�η�������-->
                    </div>
                </div>
            </div>
             <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>����ȥ��</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db13 =new DbBean();
                            String sql13="select * from article where topicname='trip' order by data desc"; //��dataʱ�� ���� 
                            ResultSet rs13=db13.query(sql13); //rs=st.executeQuery(sql);
                            int count13=4;
                            try{
                            while((count13--)!=0&&rs13.next()){
            
                         %> 
                        <li>
                            <a href="topics/<%=rs13.getString("topicname")%>/<%=rs13.getString("id")%>.jsp" target="_blank">
                               <%
                                    String str=new String(rs13.getString("title")); //ǰ27  ���µı�������ʾ��27���֣��������ֺ����Ŀ��px��һ�����Ͱ����ĵ�����������
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"��");  
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

                        <a href="topics/trip.jsp" class="btn btn-default" target="_blank">����..</a>  <!--��֪��ȥ�η�������-->
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>ӦԼ��Լ</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db14 =new DbBean();
                            String sql14="select * from article where topicname='join' order by data desc"; //��dataʱ�� ���� 
                            ResultSet rs14=db14.query(sql14); //rs=st.executeQuery(sql);
                            int count14=4;
                            try{
                            while((count14--)!=0&&rs14.next()){
            
                         %> 
                        <li>
                            <a href="topics/<%=rs14.getString("topicname")%>/<%=rs14.getString("id")%>.jsp" target="_blank">
                               <%
                                    String str=new String(rs14.getString("title")); //ǰ27  ���µı�������ʾ��27���֣��������ֺ����Ŀ��px��һ�����Ͱ����ĵ�����������
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"��");  
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

                        <a href="topics/join.jsp" class="btn btn-default" target="_blank">����..</a>  <!--��֪��ȥ�η�������-->
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>��������</h4>
                    </div>
                    <div class="panel-body">
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i>�˷�֪��</h4>
                    </div>
                    <div class="panel-body">
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-compass"></i>�ǳ�����</h4>
                    </div>
                    <div class="panel-body">
                        <%  DbBean db15 =new DbBean();
                            String sql15="select * from article where topicname='friend' order by data desc"; //��dataʱ�� ���� 
                            ResultSet rs15=db15.query(sql15); //rs=st.executeQuery(sql);
                            int count15=4;
                            try{
                            while((count15--)!=0&&rs15.next()){
            
                         %> 
                        <li>
                            <a href="topics/<%=rs15.getString("topicname")%>/<%=rs15.getString("id")%>.jsp" target="_blank">
                               <%
                                    String str=new String(rs15.getString("title")); //ǰ27  ���µı�������ʾ��27���֣��������ֺ����Ŀ��px��һ�����Ͱ����ĵ�����������
                                    if(str.length()>27){      
                                        String shorstr=new String(str.substring(0,23));          
                                        out.println(shorstr+"��");  
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

                        <a href="topics/friend.jsp" class="btn btn-default" target="_blank">����..</a>  <!--��֪��ȥ�η�������-->
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <!-- Portfolio Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">ͼ����</h2>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="images/zzu-1.jpg" alt="֣�ݴ�ѧ�羰">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="images/zzu-2.jpg" alt="֣�ݴ�ѧ�羰">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="images/zzu-3.jpg" alt="֣�ݴ�ѧ�羰">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="images/zzu-4.jpg" alt="֣�ݴ�ѧ�羰">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="images/zzu-5.jpg" alt="֣�ݴ�ѧ�羰">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="images/zzu-6.jpg" alt="֣�ݴ�ѧ�羰">
                </a>
            </div>
        </div>
        <!-- /.row -->
        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    �������� 
                </h1>
            </div>
            <div class="bcol-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>ƴ������</h4>
                    </div>
                    <div class="panel-body">
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
             
            <div class="bcol-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>��������</h4>
                    </div>
                    <div class="panel-body">
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>

            <div class="bcol-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i>�˷�֪��</h4>
                    </div>
                    <div class="panel-body">
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="bcol-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-compass"></i>�ǳ�����</h4>
                    </div>
                    <div class="panel-body">
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <li><a href="#">֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ֣�ݴ�ѧ</a></li>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <!-- Features Section -->
        <div class="row">
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
                <img class="img-responsive" src="images/zzu.jpg" alt="֣�ݴ�ѧ">
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
                    <p>Copyright &������; Your Website 2014</p>
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

