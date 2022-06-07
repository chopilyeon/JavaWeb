<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 5+5 : <%= 5+5 %><br>
<!--EL을 사용해보자 -->
 5+5 : ${ 5+5} <br>
 9 % 5: ${ 9 % 5 }<br>
 9 mod 5 :${9 mod 5 }<br>
 <!--EL을 이해 못하는 경우도 있기 때문에 tomcat9에 가서 lib에서 el을 lib에 넣어주자   -->
 9 > 5 : ${9 > 5 }<br> 
 9 gt 5 : ${ 9 gt 5 }<br>
 <!--x표시 떠있어도 에러가 아님 -->
 9 == 5 : ${ 9 ==5 }<br>
 
 9 eq 5 : ${9 eq 5}<br>
 
 <!--추후에 객체 찾는 방법을 배울 것임 -->
 
 (5==5) && (7>5) : ${ (5==5) && (7>5) }<br>
 (5 eq 5) and ( 7 gt 5 ) : ${(5 eq 5 ) and (7 gt 5)}<br>
  
  <!--empty에 대해 알아보자  -->

  empty str : ${empty str} <br> 
  <!--str이 없지? 없는 경우도 empty임 str 만든적이 없으므로 true임 
  반대로 객체가 존재하냐고 물어볼수도 있음 -->
  not empty stry : ${not empty str}<br>    
  <!--존재하지? 물어보는 것임 str 객체가 누구를 말하는지 알아보자!-->
  
  5의 짝 홀 판단을 해보자~! 
  
  5의 짝/홀 판단 : ${5 mod 2 eq 0 ? "짝수":"홀수" }<br>
  
  5의 짝/홀 판단 : ${5 % 2 == 0 ? "짝수":"홀수" }<br>
  
  
  
  
  
</body>
</html>