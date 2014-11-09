package com.service;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.db.DbBean;
import com.exception.SysException;
import com.exception.userwrong;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class registerservice {

	public void create(String id,String pwd,String nickname,String sex,String age,String email,String head,String sign, String department,String profession) throws userwrong, ClassNotFoundException, SysException {
		// TODO Auto-generated method stub
		Connection conn=null;
		ResultSet sqlRst = null;
		PreparedStatement pst=null;
		try{
			DbBean db=new DbBean();
		 	   conn=(Connection) db.getConnection();
    	pst=(PreparedStatement) conn.prepareStatement("select * from user where id=?");
    	pst.setString(1,id);
    	sqlRst=pst.executeQuery();
    	if(sqlRst.next())
    		throw new userwrong("用户名已存在");
        
    	pst=(PreparedStatement) conn.prepareStatement("insert into user(id,pwd,nickname,sex) values(?,?,?,?)");
    	pst.setString(1,id);
    	pst.setString(2,pwd);
    	pst.setString(3,nickname);
    	pst.setString(4,sex);
    //	pst.setString(5,age);
 	//pst.setString(6,email);      
     //   pst.setString(7,head);
    //	pst.setString(8,sign);
     //   pst.setString(9,department);  以后可以用
    //	pst.setString(10,profession);
    	pst.executeUpdate();
		}
		catch(SQLException e){
			throw new userwrong(e.toString());
		}
		finally{
			if(conn!=null)conn=null;
			if(pst!=null)pst=null;
			if(sqlRst!=null)sqlRst=null;
		}
		
	}

}
