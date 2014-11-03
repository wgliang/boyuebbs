<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>

<%@page language="java" pageEncoding="GB2312" %>
<%@page contentType="text/html;charset=GB2312" %>
<html>
    
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="login.css" />
<style>
table {
	margin-left: 10%;
	border: 1px solid #e7e2d7;
	border-radius: 8px;
	-webkit-border-radius: .8em;
	width:80%;
	-moz-border-radius: .8em;
	background: #fff url(sprites.png) repeat-x 0px -120px;
}

tr {
	alignment-adjust: central;
	height: 25px;
	padding-top: 11px;
	font-size: 120%
}

input {
	width: 200px;
	height: 25px;
	padding-top: 11px;
	font-size: 120%
}

font {
	color: red;
}

#background1 {
	background-image: url("image\login.jpg");
}

h1 {
	margin-left: 200px;
	background: transparent url(sprites.png) no-repeat 0px -80px;
	color: #fff;
	padding: 9px 10px 10px 10px;
	text-shadow: 0 1px 0 #403232;
	font-size: 20px;
	font-weight: bold;
}
</style>


</head>
<body id="background1">
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
	
<div class='screen-info' id='screen-info'></div> 
    
 



<div id="content">
 	<div class='center'>
    <div id="register_left">
        <div class='title-font'>新用户注册</div>
        <div id="register_center">
            <div id="register_form">
                <form action="Register" method="post">
                    <li>
                        <label>用户名(学号)：</label><input type="text" maxlength="36" name="register_idname" id="register_idname" class="text r3" value=""><span class="err_email"> 请填写用户名（学号）</span>
                    </li>
                    <li>
                        <label>昵称：</label><input style="*margin-left:-1px;" maxlength="36" type="text" name="register_nickname" id="register_nickname" class="text r3" value=""><span class="err_ulike">支持中文，最多20个字符。</span>
                    </li>
                    <li >               
                            <label>性别：</label><input style="*margin-left:-1px;width:40px" maxlength="1" type="text" name="register_sex" id="register_sex" class="text" value=""><span class="err_ulike">男/女</span>
                        
                    </li>
                    <li>
                        <label>密码：</label><input style="*margin-left:-1px;" maxlength="36" type="password" name="register_password"  id="register_password" class="text r3"><span class="err_password">6-20个字母、数字或者符号</span>
                    </li>
                    <li>
                        <label>确认密码：</label><input type="password" maxlength="36" name="register_respassword" id="register_respassword" class="text r3"><span class="err_rstpassword">这里要重复输入一下你的密码</span>
                    </li>
                 
                    <li class='reg-check'>
                        <input class="box fl" type="checkbox" checked="checked" id="checkbox"><span class="fl">我已看过并同意《<a href="error.html" target="_blank" style='display:inline;float:none'>注册服务使用协议</a>》</span>
                    </li>
                    <li>
                        <input type="submit" class="sub" value=" ">
                    </li>
                    
                </form>
            </div>
       
        </div>
    </div>
    <div id="register_right">
        <div class="rst_login">
            <span>已有泊月BBS账号？请直接登录</span>
            <a href="login.html"></a>
        </div>
        <div class='rst_other_login'>
        
        	<span>您也可以用以下方式登录：</span> 
        	<a href='error.html'><img src='images/sinakj.png'/></a>
			<a href='error.html'><img src='images/qqkj.png'/></a>
			<a href='error.html'><img src='images/zfbkj.png'/></a>
        </div>
    </div>
    
</div>
</div>


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
	<!--<div style="margin-top:80px;">
		<h1>Let's Italk</h1>
		<form action="dealregister.do" method="post"
			onsubmit="return docheck();">
			<table>
				<tr>
					<td align="right" style="width:200px;">输入账号:</td>
					<td><input type="text" maxlength="10" size="20" id="userid"
						name="userid" onblur="existuserid();"><label
						style="color: red;" id="exitid">${error }</label></td>
					<td id="td1" align="left"><font>*请输入10位以内由字母数字组成的用户名</font></td>
				</tr>
				<tr>
					<td align="right">密码:</td>
					<td><input type="password" size="21" id="psd" maxlength="15"
						name="psd"></td>
					<td id="td2" align="left" id="rightpsd"><font>*请输入15位以内密码</font></td>
				</tr>
				<tr>
					<td align="right">确认密码:</td>
					<td><input type="password" size="21" id="psd2" maxlength="15"
						name="psd2"><label id="rightpsd"></label></td>
					<td id="td3" align="left"><font>*再次输入密码</font></td>
				</tr>
				<tr>
					<td align="right">昵称:</td>
					<td><input type="text" size="20" maxlength="10"
						name="nickname"></td>
					<td id="td4" align="left"><font>10位以内由汉字、数字、字母组成</font></td>
				</tr>
				<tr>
					<td align="right">年龄:</td>
					<td><input type="text" size="20" maxlength="10" id="age"></td>
				</tr>
				<tr>
					<td align="right">性别:</td>
					<td style="height: 50px; font-size: 100%">
					<input type="radio" style="width:10px" name="sex" checked value="男">男 
					<input type="radio" style="width:10px"  name="sex" value="女">女</td>
					<td></td>
				</tr>
				<tr>
					<td align="right">签名:</td>
					<td><textarea name="signature" id="signature" maxlength="40"
						style="resize:none;word-break:break-all;"	rows="5" cols="30"></textarea></td>
					<td id="id5"></td>
				</tr>
				<tr>
					<td></td>
					<td><input style="height:50px;" type="submit" value="提交">
					<input style="height:50px;"type="reset" value="重填"></td>
					<td></td>
				</tr>
			</table>
		</form>
	</div> -->
</body>
</html>
