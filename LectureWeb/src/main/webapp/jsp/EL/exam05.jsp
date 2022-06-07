
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Map" %>    
<%@page import="java.util.HashMap" %>    
    
<%
	Map<String,String> b = new HashMap<String,String>();
	b.put("no","1");
	b.put("title","테스트");
	
	
	pageContext.setAttribute("board",b);


	
%>    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	no: <%=b.get("no") %><br>
	title:<%=b.get("title") %><br>
	<hr>
	<!--공유영역을 써보자~! 근데 왜 공유영역을 쓰나? -> 변수를 어디까지 유지시킬지에 대한 목적으로 4가지의 공유영역이 나옴 어쨌든 필요한 순간이 있더라. 누구까지 공유를 시킬 것인가?!   -->
	
	no:<%=((Map<String,String>)pageContext.getAttribute("board")).get("no") %>
	<hr>
	no:${board.no}
	title :${board.title} <br>
	<!--empty가 출력됨 aaa 없으므로  -->
	<!--empty가 없음 .을 attribute로 인식하기 때문임 -->
	aaa:${board.aaa}<br>
	<!--param.name param.id 이런거 내부적으로 다 등록해놈 map형식임   -->
	
	
	
	
</body>
</html>