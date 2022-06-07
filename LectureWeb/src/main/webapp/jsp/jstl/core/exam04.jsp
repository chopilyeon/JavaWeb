<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!--prefix c라고 안써도 됨 다른거 써도 되는데 일반적으로 c를 쓰는 것임  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:choose>
		<c:when test="${param.type=='S' }">
			<h2>반갑습니다 관리자님</h2>
		</c:when>
		<c:when test="${param.type eq 'U' }">
			<h2>반갑습니다 일반사용자님</h2>
		</c:when>
		<c:otherwise>
			<h2>type 파라미터가 전송되지 않았습니다.</h2>
		</c:otherwise>
		
		
		
	</c:choose>



</body>
</html>