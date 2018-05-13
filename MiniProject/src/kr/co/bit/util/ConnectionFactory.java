package kr.co.bit.util;
import java.sql.Connection;
import java.sql.DriverManager;

/** DB연결을 위한 ConnectionFactory */

public class ConnectionFactory {
	public Connection getConnection() {
		
		Connection conn = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String url = "jdbc:oracle:thin:@192.168.35.31:1521:orcl";
			String user = "phy";
			String password = "1234";
			
			conn = DriverManager.getConnection(url, user, password);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
}
