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
     ѧ����֯,Э����,ѧ��,��Դ,����,�,��ʳ,��Ƹ,����,ƴ��,��Լ;
    }
  enumexample articleName="Э����";

     switch(articleName)
    {
        case "ѧ����֯":articleName="xs";
                        break;
        case "Э����":articleName="xh";
                        break;
        case "ѧ��":articleName="science";
                        break;
        case "��Դ":articleName="resource";
                        break;
        case "����":articleName="friend";
                        break;
        case "�":articleName="activity";
                        break;
        case "��ʳ":articleName="food";
                        break;
        case "��Ƹ":articleName="work";
                        break;
        case "����":articleName="trip";
                        break;
        case "ƴ��":articleName="ping";
                        break;
        case "��Լ":articleName="join";
                        break;
        default:break;
    }
     out.println(articleName);     
%>
    </body>
</html>
