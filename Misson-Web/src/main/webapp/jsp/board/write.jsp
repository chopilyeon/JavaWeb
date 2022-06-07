<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="kr.ac.kopo.util.ConnectionFactory" %>    
    
    
    
<%
  /* 
   작업순서
   1.파라미터 추출(제목,작성자,내용)
   2.t_board table에 새로운 레코드르를 생성해야 함. 새로운 게시글을 삽입함 
   3. 클라이언트에게 결과를 전송해주어야 함. 
  
  
  
  */
  
  request.setCharacterEncoding("utf-8");
  String title=request.getParameter("title");
  String writer=request.getParameter("writer");
  String content=request.getParameter("content");
   

  /*맞게 되었는지 확인하자  
  System.out.println("title: " + title); //  잘 찍혔느지 확인을 하자 
  System.out.println("writer: " + title);
  System.out.println("content: " + title);
  이게 되면은 그 다음부분으로 넘어가면 됨
  */
  
  Connection conn = new ConnectionFactory().getConnection();
  StringBuilder sql = new StringBuilder();
  sql.append("insert into t_board(no,title,writer,content) ");
  sql.append(" values(seq_t_board_no.nextval,?,?,?) ");
  PreparedStatement pstmt = conn.prepareStatement(sql.toString());  
  pstmt.setString(1,title); // 물음표자리에 넣어주는 중 
  pstmt.setString(2,writer);
  pstmt.setString(3,content);

  
  pstmt.executeUpdate(); // 새글 등록이 완료되었다고 클라이언트한테 보내주면 됨. body로 가자 

%> 


<script>
	alert('새글 등록을 완료하였습니다')
	//location을 그리고 옮겨주자 
	location.href="list.jsp" 
</script>   
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--작성한 글을 서버쪽에 전달을 하면 클라이언트가 넘겨준 데이터를 가지고 작성자 제목 내용 등을 추출해야 함 추출한 데이터를 t _board table에 저장해야 함 -> 클라이언트에게 완료되었다는 결과를 알려주어야 함  -->
<!-- 	<h3>새 글 등록을 완료하였습니다.</h3>
	<a>목록으로 이동</a>  이것도 근데 귀찮다!-->
	

</body>
</html>