

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
                            if(!"null".equals((String)session.getAttribute("usernam"))){
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
                                 out.print(<a href="login.html">登录</a>);      
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
                    今日热门话题 
                </h1>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>话题排行</h4>
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
             <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>最新回复</h4>
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
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>娱乐家园</h4>
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

            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>情感私密</h4>
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

            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i>学术天地</h4>
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
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-compass"></i>美食美景</h4>
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
        <div class="lcol-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>最新资源</h4>
                    </div>
                    <div class="panel-body">
                        <li><a href="#">郑州大学郑州大学郑州大学郑州大学郑州大学郑州大学</a></li>
                        <li><a href="#">郑州大学郑州大学郑州大学郑州大学郑州大学郑州大学</a></li>
                        <li><a href="#">郑州大学郑州大学郑州大学郑州大学郑州大学郑州大学</a></li>
                        <li><a href="#">郑州大学郑州大学郑州大学郑州大学郑州大学郑州大学</a></li>
                        <li><a href="#">郑州大学郑州大学郑州大学郑州大学郑州大学郑州大学</a></li>
                        <li><a href="#">郑州大学郑州大学郑州大学郑州大学郑州大学郑州大学</a></li>
                        <li><a href="#">郑州大学郑州大学郑州大学郑州大学郑州大学郑州大学</a></li>
                        <li><a href="#">郑州大学郑州大学郑州大学郑州大学郑州大学郑州大学</a></li>
                        <li><a href="#">郑州大学郑州大学郑州大学郑州大学郑州大学郑州大学</a></li>
                        <li><a href="#">郑州大学郑州大学郑州大学郑州大学郑州大学郑州大学</a></li>
                        <li><a href="#">郑州大学郑州大学郑州大学郑州大学郑州大学郑州大学</a></li>
                        <li><a href="#">郑州大学郑州大学郑州大学郑州大学郑州大学郑州大学</a></li>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    最新活动 
                </h1>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>学生组织</h4>
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
             <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>协会风采</h4>
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
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>最近报告</h4>
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
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>最近活动</h4>
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

            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i>最新招新</h4>
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
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-compass"></i>最新招聘</h4>
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
                    拼凑约伴 
                </h1>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>拼客来临</h4>
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
             <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>凑合凑合</h4>
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
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>应约不约</h4>
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

            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i>人逢知己</h4>
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
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-compass"></i>非诚勿扰</h4>
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
        <!-- Portfolio Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">图新鲜</h2>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="images/zzu-1.jpg" alt="郑州大学风景">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="images/zzu-2.jpg" alt="郑州大学风景">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="images/zzu-3.jpg" alt="郑州大学风景">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="images/zzu-4.jpg" alt="郑州大学风景">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="images/zzu-5.jpg" alt="郑州大学风景">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="images/zzu-6.jpg" alt="郑州大学风景">
                </a>
            </div>
        </div>
        <!-- /.row -->
        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    友情链接 
                </h1>
            </div>
            <div class="bcol-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>拼客来临</h4>
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
             
            <div class="bcol-md-4">
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

            <div class="bcol-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i>人逢知己</h4>
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
            <div class="bcol-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-compass"></i>非诚勿扰</h4>
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
