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
        <title>��¼ע��֣�ݴ�ѧ��������</title>
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
                    <strong>&laquo; ��ҳ: </strong>
                </a>
                <span class="right">
                    <a href="http://www.zzu.edu.cn/">
                        <strong>����֣�ݴ�ѧ</strong>
                    </a>
                </span>
                <div class="clr"></div>
            </div><!--/ Codrops top bar -->
            <header>
                <h1>��¼<span><strong>֣��������</strong> </span></h1>
				<nav class="codrops-demos">
					<span>---<strong>֣�ݴ�ѧ</strong>��֪��Ⱥ������̳</span>
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
                                <h1>�� ½</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > ѧ�� </label>
                                    <input id="username" name="uname" required="required" type="text" placeholder="��дѧ��"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> ���� </label>
                                    <input id="password" name="pass" required="required" type="password" placeholder="��������" /> 
                                </p>
                                <p class="keeplogin"> 
                                    <input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping"  checked="checked"/> <%-- Ĭ��ѡ��--%>				<label for="loginkeeping">��ס��½</label>
				</p>
                                
                                <p class="login button"> 
                                    <input type="submit" value="��¼" /> 
								</p>
                                <p class="change_link">
									û���˺� ?
					<a href="#toregister" class="to_register">�Ͻ�ע���</a>
								</p>
                            </form>
                        </div>

                        <div id="register" class="animate form">
                            <form  action="Register" method="post"> 
                                <h1> ע ��</h1> 
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">ѧ ��</label>
                                    <input id="usernamesignup" name="usernamesignup" required="required" type="text" placeholder="����ѧ��" />
                                </p>
                              <!--  <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" > Your email</label>
                                    <input id="emailsignup" name="emailsignup" required="required" type="email" placeholder="mysupermail@mail.com"/> 
                                </p>-->
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">�� ��</label>
                                    <input id="passwordsignup" name="password" required="required" type="password" placeholder="��������"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">ȷ������ </label>
                                    <input id="passwordsignup_confirm" name="repassword" required="required" type="password" placeholder="�ٴ���������"/>
                                </p>
                                <p> 
                                    <label for="idsignup" class="youmid" data-icon="p" > �� ��</label>
                                    <input id="idsignup" name="idsignup" required="required" type="id" placeholder="�����ǳ�"/> 
                                                                                    <%-- type="id" ??? --%>
                                </p>
                            <p> 
                                     <label for="sexsignup"   >�� ��</label>
                                   <%-- <input id="sexsignup" name="sexsignup" required="unrequired" type="id" placeholder="��/Ů" /> --%>
                            <div style="width: 200px" >  
                                   <input id="sexsignup" style="width: 1px" name="sexsignup" checked value="��" type="radio" />��
                                     <input id="sexsignup"style="width: 1px" name="sexsignup" value="Ů" type="radio" />Ů
                            </div>   
                                </p>      

                                
                                   
                                
                                
                                
                                <p class="signin button"> 
							<input type="submit" value="ע ��"/> 
						</p>
                                <p class="change_link">  
								�Ѿ����˻�?
									<a href="#tologin" class="to_register"> ��½</a>
								</p>
                                
                            </form>
                        </div>
						
                    </div>
                </div>  
            </section>
        </div>
        
    </body>
</html>