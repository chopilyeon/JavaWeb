<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var = "msg " value = "hello..."/>
 	value 속성만 지정 : <c:out value="hello JSTL..."/><br>
	el msg : ${msg}<br>
	msg : <c:out value="${ msg }" default="msg변수 찾을 수 없음"/><br> 
	escapeXml = true 설정<br>
	<c:set var = "msg " value = "hello..."/>
 	<c:out value="${ msg }"/>
	<c:out value="${ msg }" escapeXml="false"/>
	<!--false면은 그냥 ${msg} 이거랑 똑같은 것임 -->
	
	
	<!--이렇게 쓰면 굳이 if문 안써도 나오더라~!  --> 
	
	<!--if문 쓰면 이렇게 복잡하더라!  -->
	<%-- <%
		if(pageContext.getAttribute("msg") == null){
			out.print('msg 변수를 찾을 수 없음')	
		}
	%> --%>
	
	
	<!--empty 가 출력이 되어야 함 -->
	
	
</body>
</html>