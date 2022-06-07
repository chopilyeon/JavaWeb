<%@page import="kr.ac.kopo.board.BoardVO"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Array"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	//1. 자바빈즈 클래스, 콜렉션
	


	/* 
	BoardVO board=new BoardVO();
	
	board.setTitle("성공");
	List<BoardVO> boardList=new ArrayList<>();
	boardList.add(board);
	
	pageContext.setAttribute("boardList",boardList);
	 */
	/* 
	Map<String,String> boardList = new HashMap<>();    
 */
 	//2. 자바빈즈 클래스 + 배열
 	/* BoardVO board = new BoardVO();
 	board.setTitle("성공");
 
 	BoardVO[] boardList = new BoardVO[]{board};
 	pageContext.setAttribute("boardList",boardList);
 
  */	
  //3. 맵객체 + 배열
 	/* Map<String,String> board = new HashMap<>();
 	board.put("title","성공");	
 	
 	Map[] boardList ={board}; */
 	/*map 배열 map으로 배열을 만드는 것임   */
 	
	//4. 맵객체 + 컬렉션
	Map<String,String> board = new HashMap<>();
 	board.put("title","성공");
 	List<Map<String,String>> boardList= new ArrayList<>();
 	boardList.add(board);
 	
 	
	pageContext.setAttribute("boardList",boardList);
 	 
 	
 
%>   
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!--성공이 나오도록 객체를 등록시켜보자~!   -->
	성공/실패? ${boardList[0].title}<br>

</body>
</html>