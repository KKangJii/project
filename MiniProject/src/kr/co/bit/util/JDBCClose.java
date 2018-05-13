package kr.co.bit.util;

import java.sql.Connection;
import java.sql.PreparedStatement;

/** Connection, PreparedStatement¸¦ close */

public class JDBCClose {
	public static void close(Connection conn, PreparedStatement pstmt) {
		try {
			if (pstmt != null)
				pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		try {
			if(conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
