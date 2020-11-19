package com.heidi.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBManager {
	private static String url = "jdbc:oracle:thin:@localhost:1521:XE";
	private static String uid = "heidi";
	private static String pwd = "1234";
	
	public DBManager() {
	}
	
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, uid, pwd);
		} catch (ClassNotFoundException e) {
			System.out.println("DRIVER LOAD ERR : " + e.getMessage());
		} catch (SQLException e) {
			System.out.println("CONNECT ERR : " + e.getMessage());
		}
		return conn;
	}// getConnection() END
	
	// select 수행한 뒤 리소스 해제를 위한 메소드
	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		try {
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.println("close ERR : " + e.getMessage());
		}
	}// close() END
	
	// DML(insert, update, delete)를 수행한 뒤 리소스 해제를 위한 메소드
	public static void close(Connection conn, Statement stmt) {
		try {
			stmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.println("close ERR : " + e.getMessage());
		}
	}// close() END

}
