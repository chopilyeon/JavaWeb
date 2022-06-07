<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>      
<!--위에 function를 uri로 받아옴으로써 이렇게 쓰면 함수를 쓸 수 있게 된 것  -->
    
    
<%
/*그냥은 접근 못하므로 공유영역에 등록을 시키도록 하자   */
	String[] names={"홍길동","강길동","윤길동","박길동"};
	pageContext.setAttribute("names",names);
	pageContext.setAttribute("length",names.length-1);
	
	

%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  -->
	이름 배열의 개수 : ${fn:length(names) }
	
	<!--위에서 굳이 정의할 필요가 없더라~!  -->
	<c:forEach begin = "0" end="${fn:length(names)-1 }" var ="i">
		<c:if test="${ i ne 0 }">
			,
		</c:if>
		${names[i]}
		
		<!--밑에거 대신 위에거로 써주자~!-->
		<%-- 
		${names[0]}
		${names[1]}
		${names[2]}
		${names[3]}
		 --%>
		
		
	</c:forEach>
	
	




	<c:forEach items="${names}" var="name" varStatus="loop">

		<c:if test="${not loop.first} ">
		,
		</c:if>
		${name}
		${names[loop.index]} <!--이런것도 가능함  --> 
		<br>
	</c:forEach>
	



	<!--한번 반복을 돌때 자기의 상태를 기억하기 위해 varStatus를 사용함.   -->
	<c:forEach items="${names}" var="name" varStatus="loop">
		${loop.first}:${loop.last}:${loop.index } :${loop.count }<br>
	</c:forEach>





	
	<c:forEach begin = "0" end="${length }" var ="i">
		<c:if test="${ i ne 0 }">
			,
		</c:if>
		${names[i]}
		
		<!--밑에거 대신 위에거로 써주자~!-->
		<%-- 
		${names[0]}
		${names[1]}
		${names[2]}
		${names[3]}
		 --%>
		
		
	</c:forEach>
	
	
	
	
	<!--두번째 방법 set tag를 이용해보자~! -->
	<c:set var ="cnt" value="1"/>
	<c:forEach items="${names}" var="name">
		<c:if test="${cnt ne 1}">
		,
		</c:if>
		${name}
		<c:set var="cnt" value="${cnt+1}" />
	</c:forEach>
	<c:remove var="cnt" scope="page"/>
	
	
	
	
	


	<!--변천사가 이렇다-->
	<!--처음에 일일이 썼음 -->
	
	
	<h2>1~10 사이의 정수 출력</h2>
	1<br>
	2<br>
	3<br>
	4<br>
	
	
	
	<%
		for(int i = 1;i<10;i++){
	%>		
		<%=i %>
	
	<%		
		}
	%>
	
	<!--위에게 귀찮아서 이제 밑에 것이 탄생함 -->
	<c:forEach begin ="1" end="10">
		hello<br>
	</c:forEach>
	
	<c:forEach begin ="1" end="10" var="i">
	<!--i라고 하는놈도 공유영역에 들어가게 되더라  -->
		${ i }<br>
		hello<br>
	</c:forEach>
	
	
	년도 선택:
	<select>
		<option>144</option>
		<option>1444</option>
		<option>14442</option>
	</select>
	<br>
  	년도 선택:<!--위에 것이 너무 귀찮더라  -->
  	<br>
	<select>
		<c:forEach begin="1970" end="2020" step="10" var="year">
		<option>${ year }</option>
		</c:forEach>
	</select>
	
	
	
	
	
	
	

</body>
</html>