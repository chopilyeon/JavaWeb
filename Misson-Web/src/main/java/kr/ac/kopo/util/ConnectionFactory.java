package kr.ac.kopo.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
	//DB를 접속한 다음에 접속 객체를 넘기는 것임. 
	//oracle안 쓰고 mysql 쓰고 싶다면? -> 이럴때 대부분 쓰는게 Factory임 공장에서 넘겨주는 거 그냥 쓰겠다 ~ 이런 것임.
	
	//connection 객체를 받아오는데 이게 마리아인지 오라클인지 관심이 없음.

	public Connection getConnection() { // try catch 안쓸거면 throws 로 넘겨줘도 됨!  //static이 아님 
		Connection conn = null;
		
		
		//소스 못고치게 class 파일만 만들어서 줄 수 있더라 jar! 실행만 가능함.
		//DB 다른 거를 쓴다던가 아이피가 변경된다던가 이동시킨다거나 뭐할 때 ConnectionFactory만 고치면 되더라~! 
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url="jdbc:oracle:thin:@192.168.119.119:1521:dink";
			String user="scott";
			String password="tiger";
			conn = DriverManager.getConnection(url,user,password);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
		
		
		
	}
	
}
