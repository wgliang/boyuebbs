/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.servlet;

import com.db.DbBean;
import com.exception.SysException;
import com.exception.userwrong;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.service.RegisterService;
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
import javax.servlet.http.HttpSession;

/**
 *
 * @author chenqian
 */
public class EstablishEssay extends HttpServlet {
protected void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException,Exception {
        
              response.setContentType("text/html;charset=GB2312");
              request.setCharacterEncoding("gb2312");
              PrintWriter out=response.getWriter();
                 HttpSession session=request.getSession(true);
		String title=request.getParameter("topic_title");//id
		String text=request.getParameter("topic_body");//pwd
                String topicname=request.getParameter("select_topic");//确认的密码
               java.util.Date a = new java.util.Date();
               java.sql.Timestamp d=new java.sql.Timestamp(a.getTime());
                String data=String.valueOf(d);
             
                String usename=(String)session.getAttribute("usernam");
                 System.out.println(d);
                 try{
                    try{

                        DbBean db1=new DbBean();
		 	String sql="insert into article(title,text,topicname,data,usename) values('"+title+"','"+text+"','"+topicname+"','"+data+"','"+usename+"')";
                         db1.update(sql);
                             db1.close();
                        }catch(Exception e){
			 System.out.println(e.toString());
                        }
	            //    request.getRequestDispatcher("index.jsp").forward(request, response);  
                       response.sendRedirect("topics/"+topicname+".jsp#new");   //该话题的所有文章，按时间顺序，最新在上面   去每个话题锚点 最新的
                 }catch(Exception e) {
                    System.out.println(e.toString());
                 }
                     
                
		
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

