<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

		/*
		객체 등록 : 공유영역.setAttribute("이름",값); 등록은 java script let에서 해주자~! 
		객체 조회 : 공유영역.getAttribute("이름")
		JSP 공유영역 4가지 : pageContext, request, session, application 이라고 얘기함 
		
		
		*/
		pageContext.setAttribute("msg","pageContext 영역에 등록 완료");
		//id 라는 이름으로 "홍길동" 값을 가진 객체 등록
		pageContext.setAttribute("id","홍길동");
		
		request.setAttribute("msg","request 영역에 등록 완료");
		pageContext.setAttribute("length","request영역에 등록완료".length());	
		

%>    
    
    


    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



	msg : ${ msg }<br> 
	<!-- 내장객체가 아니므로 4가지의 공유객체에서 찾음: pageScope, requestScope, sessionScope, applicationScope -->
	
	empty msg : ${ empty msg }<br>
	msg : <%= pageContext.getAttribute("msg") %><br>
	el msg : ${pageScope.msg} <br>
	<!--무조건 pageScope부터 찾으므로 생략도 가능함  -->
	el msg : ${msg}<br>
	el id : ${id}<br>
	<!--표현식을 대체해서 el이 나왔다!  -->
	
	request msg : ${msg}<br>
	<!--이러면 msg 출력 못함 탐색 순서 탓임 -->
	request msg : ${requestScope.msg }<br>
	
	request msg length : <%= ((String)request.getAttribute("msg")).length() %>
	<!--el로 뽑아낼 때는 자바객체가 아님! -->
	<!-- 이래서 length method 이런거 못씀  -->
	<%-- request msg : ${requestScope.msg.length() }<br> 
	따로 위에서 등록을 시켜줘야함 
	 --%>
	request msg length : ${length }<br> 
	 
	 

</body>
</html>