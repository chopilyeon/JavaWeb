<%@page import="kr.ac.kopo.util.JDBCClose"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="kr.ac.kopo.util.ConnectionFactory" %>    

    
    
<%--
 작업순서
 1. t_board 테이블에서 전체 게시글 조회
 2. 조회된 게시물을 하나씩 웹브라우저 출력 

드라이버 접속하고 연결객체 얻어오고 쿼리를 만들어서 실행객체에 넣은 다음에 걔를 실행해서 결과를 얻어와야함 -> 다 끝나면 종료해야 함 

checked exception인데 왜 try catch 안쓰지? -> jsp 가 내부적으로는 servlet code로 바뀌면서 실제로는 jsp 는 try문 안에 들어감 이미 예외처리기 안에 들어가 있다는 소리임.  
 
먼저 db에 접속하는 것이 좀 더 합리적임. 
 
 --%>    
 
 
 <%
  Connection conn = new ConnectionFactory().getConnection();
  StringBuilder sql = new StringBuilder();
  sql.append("SELECT no,title,writer,to_char(reg_date,'yyyy-mm-dd') as reg_date");
  sql.append(" from t_board ");
  sql.append(" order by no desc ");
		
  PreparedStatement pstmt = conn.prepareStatement(sql.toString());
  ResultSet rs =pstmt.executeQuery();
  	
 %>
 
 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 목록 </title>
<script src="/Misson-Web/resource/js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function(){
		$('#addBtn').click(function(){
			location.href = 'writeForm.jsp'
			
			
		})
	})
	
	

</script>
</head>
<body>
<!--http://localhost:9999/Misson-Web/jsp/board/list.jsp 이게 경로임   -->
	<div align ="center">
		<hr>
		<h2>전체 게시글 조회</h2>
		<hr>
		<table border="1" style="width:80%">
			<tr>
				<th width="7%">번호</th>
				<th>제목</th>
				<th width="16%">작성자</th>
				<th width="20%">등록일</th>
			</tr>
			<!--rs가 몇개의 tr을 만들어야 하는지 알고 있음 false나올 때까지 실행함-->
		<%
			while(rs.next()){
				int no = rs.getInt("no");
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				String regDate= rs.getString("reg_date");
				
		%>	
			<tr>
				<td><%= no %></td>
				<td><%=title %></td>
				<td><%=writer %></td>
				<td><%=regDate %></td>
			</tr>
		<%
			}
		%>	
			
		</table>
		<br>
		<button id="addBtn">새글등록</button>				
	</div>
</body>
</html>


<%
  JDBCClose.close(pstmt,conn);
%>