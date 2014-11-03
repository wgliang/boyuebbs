<%@page language="java" pageEncoding="GB2312" %>
<%@page contentType="text/html;charset=GB2312" %>
<!doctype html> 
<!--[if lt IE 7 ]><html class="ie6"><![endif]--><!--[if IE 7 ]><html class="ie7"><![endif]--><!--[if IE 8 ]><html class="ie8"><![endif]--><!--[if IE 9 ]><html class="ie9"><![endif]--><!--[if (gt IE 9)|!(IE)]><!--><html><!--<![endif]-->
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户登录 - 泊月 BBS</title>

<meta name="keywords" content=""/>
<meta name="description" content=""/>

<link type="text/css" rel="stylesheet" href="login.css" />

<script>
    if (typeof(DD_belatedPNG)!='undefined')
        DD_belatedPNG.fix('.logo,li.cart,li.fav,li.user,#search-bt,.goods-list .sort a');
</script>
</head>
<body>

<div class='wide'>
	<div id="header">
		
		<div class='inner'>
			
			<div id="logo">
				<a href="http://www.zzu.edu.cn/" class="logo" title="泊月 BBS"></a>
			</div>
			<div id='menu'>
				<div class='top_menu'>
					<a href='http://localhost:8084/BoYueBBS/index.html'>首页</a>
				</div>  				
				
				<div class='menu-item login-status' id='header-user-info'>
					<img src="images/loading-3.gif" class='loading'/>
				</div>
				
			</div>
			
			</div>
		</div>
		
	</div>
	</div>
<div class='screen-info' id='screen-info'></div>
	



<div id="content">
	<div class='center '>
		<div class="lg_left">
                    <li class='title-font'>登录 泊月BBS</li>
                    <form action="LoginCheck" method="post">
                        <li><input type="text" value="" name="uname" id='uname' class="input-text" maxlength="32"/><h3 style="color:#DB3834"> -用户名或密码错误，请重新登陆-</h3><span id='lg-username'></span></li>
		    <li><input type="password" value="" name="pass" id='pass' class="input-text" maxlength="32" /><span id='lg-password'></span></li>
		    <li><input type="checkbox" value="1" id="remember" class="check" checked="checked" />记住我（两周免登录）</li>
		    <li  id='lg-bt'><input type="submit" value=" " class="sub"/><span style='display:none;'>登录中...</span><a href="find" class='forgot'>忘记密码？</a></li></form>
			<li>您也可以用以下方式登录： </li>
			<li class='icon'><a href='http://localhost:8084/BoYueBBS/error.html' class='icon'>
                                <img src='images/icon_sina_32.png'/></a>
                            <a href='http://localhost:8084/BoYueBBS/error.html' class='icon'>
                                <img src='images/icon_qq_32.png'/></a>
                            <a href='http://localhost:8084/BoYueBBS/error.html' class='icon'>
                                <img src='images/alipay_login.png'/></a></li>
		</div>
					
				
		<div class="lg_right">
                    <br><br><br>
                    <li class='title-font'><h2>注册</h2></li>
                    <br><br><br><br>
		    <li><h3> 还没有 泊月BBS账号？</h3></li>
                    <br><br><br>
		    <li><a href="/BoYueBBS/register.jsp"></a></li>
		</div>
	</div>
</div>


<div class='clear'></div>
<div id="foot">
    <div class='foot-inner'>
        <span class='about'>
        	<a href='index.html' >关于 泊月BBS</a><a href='http://www.zzu.edu.cn' class='selected'>联系我们</a>
			<span class="cr" >&copy;2014 泊月BBS制作团队 保留一切权利。 <a href='http://www.zzu.edu.cn' target='_blank'>京ICP备12028257号</a> </span>
        </span>
        

        <span class="wxlogo">
        	<img src='http://style.cdn.kuhaitao.com/web/qrcode.png'><br>
			关注微信
        </span>
		<div class='clear'></div>
        

				<div class='clear'></div>
        
    </div>
</div>

	