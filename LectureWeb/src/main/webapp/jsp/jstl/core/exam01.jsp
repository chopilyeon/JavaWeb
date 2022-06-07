<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--이걸 쓰기 위해서 다운로드 필요함 tomcat.apache.org로 가자.  corefix를 c로 쓰겠다 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	1값을 가지는 변수 cnt 선언(page 공유영역)<br>
	<%-- <%
		pageContext.setAttribute("cnt","1"); //원래는 이렇게 썼었음	
	%>
	 --%> 
	<c:set var="cnt" value="1" /> 
	<!--반드시 종료태그가 필요하더라~!  안써주면 자동으로 page공유영역인지 안다! --> 
	 공유영역에 설정된 cnt 변수 : ${cnt}<br>
	<%--  <%
	  	int cnt=Integer.parseInt(pageContext.getAttribute("cnt"));
	 	++cnt;
	 	pageContext.setAttribute("cnt",cnt);
	 %>
	 --%> 
	 <!--근데 우리는 자바 코드가 쓰기가 싫음.  자 이때 en 연산자를 사용하더라! -->
	 <%-- <c:set var="cnt" value="${cnt+1 }" />
	  --%>
	  <!--page 안에 있는 값은 여전히 1임   -->
	  <c:set var="cnt" value="${cnt+1 }" scope="request" />
	  request cnt : ${ requestScope.cnt }<br>
		 
<!--제거  -->	 
	 cnt에 1 증가한 값 : ${cnt}<br>
	 cnt 변수 삭제 <br>
	 <c:remove var = "cnt" scope="page"/>
	 <!--page에 있는거 찾아서 삭제해버림  -->
	 cnt:${pageScope.cnt}<br> 
	 request cnt : ${requestScope.cnt}<br>
 <!--실제 출력할때 core tag도 사용할 수 있더라~!   -->


	

</body>
</html>

<%-- 부르는 이름이 다르더라~! set 태그 모름 jsp에 대한 해석을 끝냄 -> 문자열의 형태로만 날라감  그런 다음에 html css javascript가 해석이 되더라! 
<%--우리 나중에 jsp html css javascript 코드 이거저거 섞임 javascript안에다가 아무리 en태그 써봤자 안먹힘 client에서는 set태그 아무리 봐도 안보임 해석의 순서탓임--%> 
<!-- 
	JSP 					EL						JSTL
	-------------------------------------------------------------
	pageContext			pageScope					page
	request				requestScope				request
	session				sessionScope				session
	application			applicationscope		application
 --> 



