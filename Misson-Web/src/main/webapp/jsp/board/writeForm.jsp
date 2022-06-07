<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/Misson-Web/resource/js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function(){
		$('#listBtn').click(function(){
			location.href="list.jsp"
		})
		
		
		
		})

	 function checkForm(){
		
		let f = document.writeForm
		if(f.title.value==''){
			alert('제목을 입력하세요')
			f.title.focus() 
			/*focus 함수 때문에 마우스에 커서가 가 있음 */
			return false
		}
		
		if(f.writer.value==''){
			alert('작성자를 입력하세요')
			f.writer.focus()
			return false
		}
		if(f.content.value==''){
			alert('내용을 입력하세요')
			f.content.focus()
			return false
		}
		
		
		return true;
	}	
		
	

</script>

</head>
<body>

	<div align="center">
		<hr>
		<h2>새글 등록폼</h2>
		</hr>
		<br>
		<!--onsubmit은 form 태그에 씀.submit버튼 눌렀을 때 action이 가르키고 있는 url로 이동할지 막을지 결정하는 것이 onsubmit임 true 대신에 false 쓰면은 이동을 제한함. 하나라도 빈 공간이 있으면 가지마!   -->
	<!-- <form action="write.jsp" method="post" onsubmit="return true"> 지금 하나하나에 다 required 쓰기가 너무 귀찮음. 그래서 Form 태그에다가 써주자 -->
	
	<form action="write.jsp" method="post" name="writeForm" onsubmit="return checkForm()">
		<table border="1" style="width:80%">
			<tr>
				<!--th가 header임 자동으로 정렬해줌 tr은 row임 td가 tabledata임-->
				<th width="25%">제목</th>	
				<td><input type="text" name="title" size=80></td>  
				<!--속성과 value가 같으면 생략도 가능함 그냥 required만 써도 됨 required="required" -->
				
			</tr>
			<tr>
				<th width ="25%">작성자</th>
				<td><input type="text" name="writer"></td>
		<!-- 		<td><input type="text" name="writer" required></td> -->
			</tr>
			<tr>
				<th width ="25%">내용</th>
				<td>
					<textarea rows="5" cols="80" name="content"></textarea>
				</td>
				<!--content 아무것도 안쓰면 에러가 발생하게 됨 not null로 정의했으므로   -->
				
			</tr>
		</table>
		<br>
		<input type="submit" value="새글등록">&nbsp;
		<button id="listBtn">목록</button>
	<form>
	</div>

</body>
</html>