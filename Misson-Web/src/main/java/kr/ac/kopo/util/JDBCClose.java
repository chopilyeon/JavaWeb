package kr.ac.kopo.util;

import java.sql.Connection;
import java.sql.Statement;

public class JDBCClose {
	
	// 연결객체 뿐만 아니라 쿼리를 가지고 있는 실행객체도 다 끊어줘야함 
	
	
	public static void close(Statement pstmt,Connection conn) { // 묵시적 형변환 실시 preparedStatemenet는 staement를 상속함 
		
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		if(conn != null) {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		
		
	}

}
