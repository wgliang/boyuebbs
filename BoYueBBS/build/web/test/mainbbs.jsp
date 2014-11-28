

<%@page language="java" import="java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
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
                <a class="navbar-brand" href="index.html">开启社区之旅</a>
            </div>
             <div class="search">
                <form action="">
                <input class="text" type="text" value="   搜索话题、文字或人" />
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
                        <a href="##">组织</a>
                    </li>
                    <li>
                        <a href="##">学术</a>
                    </li>
                    <li>
                        <a href="##">资源</a>
                    </li>
                    <li>
                        <a href="##">交友</a>
                    </li>
                    <li>
                        <a href="##">活动</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">娱乐<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="portfolio-1-col.html">美食</a>
                            </li>
                            <li>
                                <a href="portfolio-2-col.html">招聘</a>
                            </li>
                            <li>
                                <a href="portfolio-3-col.html">旅游</a>
                            </li>
                            <li>
                                <a href="portfolio-4-col.html">拼客</a>
                            </li>
                            <li>
                                <a href="portfolio-item.html">有约</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">博客 <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="blog-home-1.html">Blog Home 1</a>
                            </li>
                            <li>
                                <a href="blog-home-2.html">Blog Home 2</a>
                            </li>
                            <li>
                                <a href="blog-post.html">Blog Post</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">其他 <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="full-width.html">Full Width Page</a>
                            </li>
                            <li>
                                <a href="sidebar.html">Sidebar Page</a>
                            </li>
                            <li>
                                <a href="faq.html">FAQ</a>
                            </li>
                            <li>
                                <a href="404.html">404</a>
                            </li>
                            <li>
                                <a href="pricing.html">Pricing Table</a>
                        </li>
                        </ul>
                    </li>
                    <li>
                        <%
                            if(!"".equals((String)session.getAttribute("usernam"))){
                        %>
                                
                         <a href="#" class="dropdown-toggle" data-toggle="dropdown"><% String uesrname = (String)session.getAttribute("usernam");
                                out.print("<span>"+uesrname+"</span>"); %> <b class="caret"></b></a>
                         <ul class="dropdown-menu">
                            <li>
                                <a href="blog-home-1.html">我的主页</a>
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
                                 <a href="login.html">登录</a>
                          <%  } %>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>


        <!--生成话题列表-->
    <div class="container">
        <div class="row1">
            <div class="col-lg-12">
                <h1 class="page-header">
                    类别名称 
                </h1>

            </div>
        </div>
    </div>
        <!--生成话题列表-->

        

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

