<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>1~10 사이의 정수를 출력</h1>
	1<br>
	2<br>
	3<br>
	4<br>
	5<br>
	6<br>
	7<br>
	8<br>
	9<br>
	10<br>
	<%
		for(int i=1;i<10;i++){
			out.println(i+"<br>");
			System.out.println(i);// out이란 객체가 있으므로 거기에 work 가보면은 suvlet code안에 이미 out객체가 있음 어차피 근데 이렇게 안씀 jsp 안에서 자바 코드 안쓰는 것이 목적임. 
		}
	
	%>

</body>
</html>