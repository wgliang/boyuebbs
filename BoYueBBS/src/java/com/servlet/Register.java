/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.servlet;

import com.exception.SysException;
import com.exception.userwrong;
import com.mysql.jdbc.PreparedStatement;
import com.service.registerservice;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author chenqian
 */
public class Register extends HttpServlet {
protected void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException,Exception {
        
              response.setContentType("text/html;charset=GB2312");
              request.setCharacterEncoding("gb2312");
              PrintWriter out=response.getWriter();
 
		String id=request.getParameter("usernamesignup");//id
		String pwd=request.getParameter("password");//pwd
                String repwd=request.getParameter("repassword");//确认的密码
                String nickname=request.getParameter("idsignup");//nickname
                String sex=request.getParameter("sexsignup");//sex
		String age=""; //年龄
                String email="";//邮箱
                String head="";//头像url
                String sign="";//签名
                String department="";//院系
                String profession="";//专业
               
                 try{
                       if(!pwd.equals(repwd)){
                      throw new userwrong("密码不一致");  
                       }
                       else{
                          try {
                                new registerservice().create(id,pwd,nickname,sex,age,email,head,sign,department,profession);
                                request.setAttribute("error","注册成功，请登录！");
                                request.getRequestDispatcher("index.jsp").forward(request, response);
                            } catch (ClassNotFoundException e) {			
                                e.printStackTrace();
                            } catch (userwrong e) {
                                // TODO Auto-generated catch block
                                 request.setAttribute("error",e.getMessage());
                                 response.sendRedirect("login.jsp#toregister");   //跳转                     
                                // out.println("<script language=\"javascript\">");
                                 //out.println("window.open (\"registererror.html\", \"newwindow\", \"height=200, width=200, top=200, left=400, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no\")&nbsp;"); 
                                 //  out.println("</script>");
                                //跳出错误小窗口
                                // request.getRequestDispatcher("login.jsp#toregister").forward(request, response);
                                e.printStackTrace();
                            } catch (SysException e) {
                                // TODO Auto-generated catch block
                                e.printStackTrace();
                            }
                            finally{
			
                            }
                       }
                 }catch(userwrong e) {
                       response.sendRedirect("login.jsp#toregister");   //跳转  
                 }
                     
                
		/**try {
                    
                        
			new registerservice().create(id,pwd,nickname,sex,age,email,head,sign,department,profession);
			request.setAttribute("error","注册成功，请登录！");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (userwrong e) {
			// TODO Auto-generated catch block
		       request.setAttribute("error",e.getMessage());
                       response.sendRedirect("login.jsp#toregister");   //跳转
                       
                      // out.println("<script language=\"javascript\">");
                       //out.println("window.open (\"registererror.html\", \"newwindow\", \"height=200, width=200, top=200, left=400, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no\")&nbsp;"); 
                      //  out.println("</script>");
                       
                        //跳出错误小窗口
                       // request.getRequestDispatcher("login.jsp#toregister").forward(request, response);
   
  
			e.printStackTrace();
		} catch (SysException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			
		}**/
               }

   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=GB2312");
        request.setCharacterEncoding("gb2312");
       
        try {
            processRequest(request,response);
        } catch (userwrong ex) {
            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
        Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
    }
       
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=GB2312");
            request.setCharacterEncoding("gb2312");
        try {
            processRequest(request, response);
        } catch (userwrong ex) {
            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
        Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
    }
    }

    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

   

}
