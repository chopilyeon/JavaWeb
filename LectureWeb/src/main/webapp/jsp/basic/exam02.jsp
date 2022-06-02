<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>1~10 사이의 정수 출력</h1>
	<%
		int sum =0;
		for(int i =1; i<=10;i++){
			sum = sum + i;
			//out.println(i+"<br>");
			//이렇게 안쓸거임. 
	%>		
		<%= i %><br> 
		<!--이게 out.write로 바뀌게 됨 .  -->		
		<!-- hello<br> 이걸 out.write(hello)로 바꿔줌> -->	
	<%		
		}
	
	%>


	1~10 사이의 총합 : <%=sum %><br>
	<!--변수부분만 표현식으로 써주겠다는 의미임.  -->
	

</body>
</html>