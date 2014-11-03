/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.servlet;

import com.mysql.jdbc.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author chenqian
 */
public class Register extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
            String username=request.getParameter("register_idname");
	    String nickname=request.getParameter("register_nickname");
            String sex=request.getParameter("register_sex");
	    String password=request.getParameter("register_password");
            String respassword=request.getParameter("register_respassword");
     
            
              java.sql.Connection conn=null;
	       java.sql.Statement st=null;//语句对象
	      java.sql.ResultSet rs=null;//结果集对象
              PreparedStatement pst=null;
              
               PrintWriter out = response.getWriter();
           
               try {
		Class.forName("com.mysql.jdbc.Driver");
             
                conn=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/boyuebbs","root","");
                //st=conn.createStatement();  //建立语句对象
            
           //String sql="INSERT INTO user (id,pwd,nickname,sex) VALUES ('username','password','nickname','sex')";
              //  String sql="INSERT INTO user (id,pwd,nickname,sex) VALUES ('225222','2222','ddsasn','男')";
             //   rs=st.executeQuery(sql);//这里
           pst=(PreparedStatement) conn.prepareStatement("insert into user values(?,?,?,?)");
    	pst.setString(1, username);
    	pst.setString(2, password);
    	pst.setString(3,nickname);
    	pst.setString(4,sex);
 
              if(respassword.equals(password)&&(username!="")&&(nickname!="")&&(sex!="")&&(password!="")){  
                        
                 //
                	pst.executeUpdate();
                  out.println(sex);//---------------
                     response.sendRedirect("index.html"); //登陆成功，到主页去了
              }
              else{
                  RequestDispatcher dispatcher =
                               getServletConfig().getServletContext().getRequestDispatcher("/register.jsp");//页面改一下
                      dispatcher.forward(request, response);
              }     
                
              }catch(SQLException e) {
                   System.out.println(e.toString());
              } catch (ClassNotFoundException ex) {
            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
                  if(rs!=null)try{rs.close();}catch(java.sql.SQLException e1){
                      System.out.println(e1.toString());
                  }finally{
                      try{
                          if(st!=null)
                              st.close();
                      }catch(java.sql.SQLException e2){
                        System.out.println(e2.toString());
                      }finally{
                          try{
                              if(conn!=null)conn.close();
                          }catch(java.sql.SQLException e3){
                                System.out.println(e3.toString());
                          }
                      }
                  }
                  }
   
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=GB2312");
            request.setCharacterEncoding("gb2312");
        processRequest(request,response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=GB2312");
            request.setCharacterEncoding("gb2312");
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

   

}
