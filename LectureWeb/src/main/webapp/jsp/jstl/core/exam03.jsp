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
	<%--
	 	http://localhost:9999/LectrueWeb/jsp/jstl/core/exam04.jsp?type=S or 
		http://localhost:9999/LectrueWeb/jsp/jstl/core/exam04.jsp?type=U 라고 요청하는 경우를 보고 싶은 것임.
	 --%>
	 
	 <%-- <c:if test="true">
	  --%>
	 <c:if test ="${param.type=='S'}">
	 <!--test는 true혹은 false 값을 결정하게 됨 -->
	 <!--얘에 대해 제어를 가하고 싶음  -->
	 <h2>반갑습니다 관리자님</h2>  
	 </c:if>
	 
	 
	 <!--U일때도 출력이 되면 좋겠음   -->
	 <c:if test="${param.type eq 'U'}">
	 	<h2>반갑습니다 일반 사용자님</h2>
	 </c:if>
	 <!--근데 실수로 type을 안붙이면 어떻게 되지? -->
	 
	 <!--type이 날라가지 않았다는 걸 어떻게 써줄 건가? 그럴 때는 empty가 필요하더라~!   -->
	 
	 <c:if test="${empty param.type }">
	 	<H2>type 파라미터가 전송되지 않았습니다</H2>
	 </c:if>





</body>
</html>