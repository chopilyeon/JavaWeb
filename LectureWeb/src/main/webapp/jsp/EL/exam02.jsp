<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%--
	http:/localhost:9999/jsp/e1/exam02.jsp?id=aaa&name=bbb 요청을 했다는 가정하에... 처리하고 싶다 날라온 id의 값과 name의 값을 출력해주고 싶네?~! 
	id와 name을 알기 위해 getParameter로 추출할 수 있음. 
 --%>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String[] hobby=request.getParameterValues("hobby"); // 밑에 hobby 저런식으로 보내면은 배열로 받아와야함 
	/*에러나서 뭣 좀 추가시켜서 써주자   */
	if(hobby == null){
		hobby = new String[]{"파라미터 없음"};
	}

%>


<!--servlet에서는 response로 html형식으로 지금 써주는 중임 work가서 코드보면 알 수 있음  -->
	id : <%= id %><br>
	name : <%= name %><br>
	<!--날라오는 데이터 없으므로 지금은 null로 나올 것임 하지만 ?id=aaa&name=bbb라고 써주면 출력이 됨! -->
    id : <%=request.getParameter("id") %><br>
    el id : ${param.id }<br>
    <!--이 메핑객체가 param임 -->
    name:<%=request.getParameter("name") %><br>
	el name : ${param.name}<br> 
<%--
	http:/localhost:9999/jsp/e1/exam02.jsp?id=aaa&name=bbb&hobby=music&hobby=movie&hobby=reading 요청을 했다는 가정하에...
 --%>
  hobby[0]:<%=hobby[0] %><br> 
  <!--이러면 music이 찍힌다!~  -->
  el hobby[0] : ${paramValues.hobby[0] }<b4>
  <!--500 에러가 발생하게 됨 hobby[0]:<%=hobby[0] %><br>  얘 ctrl F11 눌러보면 error 발생함 hobby 에 아무것도 없으니까 500 에러 발생함. 하지만 el은 empty로 그냥 나와버린다!! 위에서 null값이 나오도록 수정을 해주자 -->
  empty hobby[0]:${empty paraValues.hobby[0] }<br> 
  <!--null의 의미를 모를 수 있으므로 empty가 나음  -->




</body>
</html>