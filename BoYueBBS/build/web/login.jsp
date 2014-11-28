<!DOCTYPE html>
<%@page language="java" pageEncoding="GB2312" %>
<%@page contentType="text/html;charset=GB2312" %>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>登录注册郑州大学泊月社区</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style2.css" />
	<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
    </head>
    <body>
        <div class="container">
            <!-- Codrops top bar -->
            <div class="codrops-top">
                <a href="index.jsp">
                    <strong>&laquo; 首页: </strong>
                </a>
                <span class="right">
                    <a href="http://www.zzu.edu.cn/">
                        <strong>访问郑州大学</strong>
                    </a>
                </span>
                <div class="clr"></div>
            </div><!--/ Codrops top bar -->
            <header>
                <h1>登录<span><strong>郑大泊月社区</strong> </span></h1>
				<nav class="codrops-demos">
					<span>---<strong>郑州大学</strong>高知人群社区论坛</span>
				</nav>
            </header>
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="LoginCheck" method="post"> 
                                <h1>登 陆</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > 学号 </label>
                                    <input id="username" name="uname" required="required" type="text" placeholder="填写学号"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> 密码 </label>
                                    <input id="password" name="pass" required="required" type="password" placeholder="输入密码" /> 
                                </p>
                                <p class="keeplogin"> 
                                    <input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping"  checked="checked"/> <%-- 默认选中--%>				<label for="loginkeeping">记住登陆</label>
				</p>
                                
                                <p class="login button"> 
                                    <input type="submit" value="登录" /> 
								</p>
                                <p class="change_link">
									没有账号 ?
					<a href="#toregister" class="to_register">赶紧注册吧</a>
								</p>
                            </form>
                        </div>

                        <div id="register" class="animate form">
                            <form  action="Register" method="post"> 
                                <h1> 注 册</h1> 
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">学 号</label>
                                    <input id="usernamesignup" name="usernamesignup" required="required" type="text" placeholder="输入学号" />
                                </p>
                              <!--  <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" > Your email</label>
                                    <input id="emailsignup" name="emailsignup" required="required" type="email" placeholder="mysupermail@mail.com"/> 
                                </p>-->
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">密 码</label>
                                    <input id="passwordsignup" name="password" required="required" type="password" placeholder="输入密码"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">确认密码 </label>
                                    <input id="passwordsignup_confirm" name="repassword" required="required" type="password" placeholder="再次输入密码"/>
                                </p>
                                <p> 
                                    <label for="idsignup" class="youmid" data-icon="p" > 昵 称</label>
                                    <input id="idsignup" name="idsignup" required="required" type="id" placeholder="输入昵称"/> 
                                                                                    <%-- type="id" ??? --%>
                                </p>
                            <p> 
                                     <label for="sexsignup"   >性 别</label>
                                   <%-- <input id="sexsignup" name="sexsignup" required="unrequired" type="id" placeholder="男/女" /> --%>
                            <div style="width: 200px" >  
                                   <input id="sexsignup" style="width: 1px" name="sexsignup" checked value="男" type="radio" />男
                                     <input id="sexsignup"style="width: 1px" name="sexsignup" value="女" type="radio" />女
                            </div>   
                                </p>      

                                
                                   
                                
                                
                                
                                <p class="signin button"> 
							<input type="submit" value="注 册"/> 
						</p>
                                <p class="change_link">  
								已经有账户?
									<a href="#tologin" class="to_register"> 登陆</a>
								</p>
                                
                            </form>
                        </div>
						
                    </div>
                </div>  
            </section>
        </div>
        
    </body>
</html>