package vn.iostart.config;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.mysql.cj.jdbc.DatabaseMetaData;


public class DBConnectMySQL {
	private static Connection con = null;
	private static String USERNAME = "root";
	private static String PASSWORD = "Tho#2209";
	private static String URL = "jdbc:mysql://localhost:3306/ltwebst4";

	public static Connection getDatabaseConnection() throws IOException {
		con = null;
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			con = (Connection) DriverManager.getConnection(URL, USERNAME, PASSWORD);
		} catch (SQLException ex) {
			Logger.getLogger(DBConnectMySQL.class.getName()).log(Level.SEVERE, null, ex);
		}
		return (con);
	}
	public static void main(String[] args) {
		try {
			Connection c = getDatabaseConnection();
			if(c==null) {
				System.out.println("Something wrong");
			} else {
				DatabaseMetaData dm = (DatabaseMetaData) con.getMetaData();
				System.out.println("Driver name: "+ dm.getDriverName());
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
