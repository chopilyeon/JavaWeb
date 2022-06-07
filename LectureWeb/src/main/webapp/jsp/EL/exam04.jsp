<%@ page import="kr.ac.kopo.board.BoardVO"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/*객체를 하나 만들어보자   */


	BoardVO b= new BoardVO();
	

	b.setNo(1);
	b.setTitle("테스트");
	
	
	// pageContext 영역에 객체 등록
	// 이름 : board 값 : 생성된 BoardVO 객체 
	pageContext.setAttribute("board",b);


%>    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- no:<%=b.getNo() %><br>  --%>
	no: <%= ((BoardVO)pageContext.getAttribute("board")).getNo %><br> 
	<!--이렇게 해주면 됨 object로 뱉어내므로 형변환을 시켜주자~! BoardVO로 형변환 근데 너무 불편하더라~! -->
	<!--board로 찾겠다~! 근데 자바빈즈 클래스 형이므로 .no으로 쓰면은 getno을 호출해주더라!   -->
	no:${board.no }
	
	title :<%=((BoardVO)pageContext.getAttribute("board")).getTitle() %><br>
	title : ${board.title}<br>
	<!--이거 쓰면은 500 에러 발생함 자바빈즈면 getter로 인식 -->
	aaa:${board.aaa} <br>
	
	


</body>
</html>