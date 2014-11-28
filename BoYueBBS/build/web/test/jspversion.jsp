<%-- 
    Document   : jspversion
    Created on : 2014-11-22, 10:36:17
    Author     : chenqian
--%>

<%@page contentType="text/html" pageEncoding="GB2312"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
out.println("java.version");      
out.println(System.getProperty("java.version")); 
 enum enumexample 
    {
     学术组织,协会风采,学术,资源,交友,活动,美食,招聘,旅游,拼客,有约;
    }
  enumexample articleName="协会风采";

     switch(articleName)
    {
        case "学术组织":articleName="xs";
                        break;
        case "协会风采":articleName="xh";
                        break;
        case "学术":articleName="science";
                        break;
        case "资源":articleName="resource";
                        break;
        case "交友":articleName="friend";
                        break;
        case "活动":articleName="activity";
                        break;
        case "美食":articleName="food";
                        break;
        case "招聘":articleName="work";
                        break;
        case "旅游":articleName="trip";
                        break;
        case "拼客":articleName="ping";
                        break;
        case "有约":articleName="join";
                        break;
        default:break;
    }
     out.println(articleName);     
%>
    </body>
</html>
