package com.db;

import java.sql.SQLException;

import com.exception.SysException;
public class DbBean {
	private java.sql.Connection conn=null;
	private java.sql.Statement st=null;
	private java.sql.ResultSet rs=null;
	public DbBean() throws SysException{
    	
    	try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			throw new SysException(e);
		}
    	try {
			conn=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/boyuebbs",
					"root",
					"0000");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new SysException(e);
		}
    	try {
			st=conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new SysException(e);
		}
    }
    public java.sql.Connection getConnection()
    {
    	return conn;
    }
    public java.sql.ResultSet query(String sql) throws SysException{
    	
    	try {
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			throw new SysException(e);
		}
    	return rs;
    } 
	public boolean update(String sql)
    {
    		boolean rs=true;
    		try {
				st.executeUpdate(sql);
				
			} catch (SQLException e) {
				rs=false;
			}finally{
				return rs;
			}		
    }
	public void close() throws SysException{
		if(rs!=null){
			try {
				rs.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				throw new SysException(e);
			}
		}
		if(st!=null){
			try {
				st.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				throw new SysException(e);
			}
		}
		if(conn!=null){
			try {
				conn.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				throw new SysException(e);
			}
		}
	}
}
