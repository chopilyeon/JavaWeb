package kr.ac.kopo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MethodServlet extends HttpServlet {

	//http://localhost:9999/LectureWeb/method?id=hong 
	//요청을 통해 id를 추출받고 싶은거임 
	//parameter

	
	@Override// doPost doGet 한번 바꿔보자~~!! get은 url의 ?를 통해서 날라감 post방식은 body에 숨겨서 날라가게 됨 요청 url에 보이지 않음. 이거 말고는 다른게 없어보임 그럼 id에 홍길동을 치면 어떻게 될까? -> post방식에서는 안보임 이상한 문자로 보임->decoding이 필요함. get방식에서는 아무런 문제가 없음.  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//request에 client가 server에 요청한 정보들이 다 담겨 있음 그 요청 객체를 통해서 parameter들을 추출하고 싶다
		
		
		
		String method=request.getMethod(); 
		
		//get방식인지 post방식인지 궁금함 		
		String uri =request.getRequestURI();
		
		String id =	request.getParameter("id");
		StringBuffer url =request.getRequestURL(); // 이건 return type이 STRING buffer임
		
		
		
		
		//html 문서 보면은 위에 content type이랑 이런거 정의가 되어 있음 
		response.setContentType("text/html; charset=utf-8"); // 내 응답하는 종류가 이렇게 이렇게 돼라고 정이ㅡ해야함 text중에서도 html 방식이고 utf-8 방식이야~!  
		PrintWriter out=response.getWriter(); // return타입이 printwriter임 println printf 를 이용하기 위해 io 통로가 필요해 io통로를 이용하겠다! 
		out.println("<html>"); // out 이 통로를 통해서 html 문서를 넘기겠다는 의미임
		out.println(" <head>");
		out.println("    <title>메소드 요청방식</title>");
		out.println(" </head>");
		out.println(" <body>");
		out.println("   ========================================<br>");
		out.println("          &nbsp;&nbsp;&nbsp;출력결과<br>");
		out.println("  파라미터(id):"+id+"<br>");
		out.println("  요청방식:"+method+"<br>");
		out.println("  uri:"+uri+"<br>");
		
		out.println("   ========================================<br>");

		out.println("   ========================================<br>");
		out.println(" </body>");
		out.println("</html");
			
		//id란 속성으로 들어온 value값이 궁금함 
		 System.out.println("요청 Method : "+method);
		 System.out.println("요청 URI" + uri);
		 System.out.println("요청 url"+url.toString()); //우리한테 중요한건 uri 
		 //url은 실제 각각의 server가 갖고 있는 요소들을 구분할 수 있는 구분자를 포트 프로토콜 경로들을 포함한 것임 리소스가 진짜 어디에 있는지  
		 //uri 오직 그냥 내 서버내에서 자원들을 구분할 수 있는 경로들을 의미함
		 //server입자에서 Lectureweb밑에 여기저기 있는 자원들을 접근할 수 있는 경로를 표현하는데 프로토콜들과 포트를 포함하느냐 이 차이임. 
		 System.out.println("id:"+id);
			//request의 메소드들을 이용해서 client가 날린 정보들을 알 수 있더라~! 
			
		 //지금은 톰캣 서버가 해석중. 자신의 서버쪽에서 지금 출력을 하고 있는 것임 우리는 클라이언트 화면에 출력하고 싶음 
		 //웹브라우저가 해석할 수 있는건 html 뿐임. 
		 //서버가 클라이언트에 html 서버를 넘겨주어야 하는것임
		 //이제 넘겨보자! 
		 //이제 response객체가 처리해보자~! response 객체를 통해서 응답을 하게 됨 httpServletResponse 객체 
			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//request에 client가 server에 요청한 정보들이 다 담겨 있음 그 요청 객체를 통해서 parameter들을 추출하고 싶다
		
		//한글을 해석할수 있어야함 
		request.setCharacterEncoding("utf-8"); // 이렇게 써줘야함 post방식일 때 꼭 서주자
		
		
		
		String method=request.getMethod(); 
		
		//get방식인지 post방식인지 궁금함 		
		String uri =request.getRequestURI();
		
		String id =	request.getParameter("id");
		StringBuffer url =request.getRequestURL(); // 이건 return type이 STRING buffer임
		
		
		
		
		//html 문서 보면은 위에 content type이랑 이런거 정의가 되어 있음 
		response.setContentType("text/html; charset=utf-8"); // 내 응답하는 종류가 이렇게 이렇게 돼라고 정이ㅡ해야함 text중에서도 html 방식이고 utf-8 방식이야~!  
		PrintWriter out=response.getWriter(); // return타입이 printwriter임 println printf 를 이용하기 위해 io 통로가 필요해 io통로를 이용하겠다! html을 웹브라우저에 넘기면 그걸 웹브라우저가 해석을 하는 것임.
		out.println("<html>"); // out 이 통로를 통해서 html 문서를 넘기겠다는 의미임
		out.println(" <head>");
		out.println("    <title>메소드 요청방식</title>");
		out.println(" </head>");
		out.println(" <body>");
		out.println("   ========================================<br>");
		out.println("          &nbsp;&nbsp;&nbsp;출력결과<br>");
		out.println("  파라미터(id):"+id+"<br>");
		out.println("  요청방식:"+method+"<br>");
		out.println("  uri:"+uri+"<br>");
		
		out.println("   ========================================<br>");

		out.println("   ========================================<br>");
		out.println(" </body>");
		out.println("</html");
			
		//id란 속성으로 들어온 value값이 궁금함 
		 System.out.println("요청 Method : "+method);
		 System.out.println("요청 URI" + uri);
		 System.out.println("요청 url"+url.toString()); //우리한테 중요한건 uri 
		 //url은 실제 각각의 server가 갖고 있는 요소들을 구분할 수 있는 구분자를 포트 프로토콜 경로들을 포함한 것임 리소스가 진짜 어디에 있는지  
		 //uri 오직 그냥 내 서버내에서 자원들을 구분할 수 있는 경로들을 의미함
		 //server입자에서 Lectureweb밑에 여기저기 있는 자원들을 접근할 수 있는 경로를 표현하는데 프로토콜들과 포트를 포함하느냐 이 차이임. 
		 System.out.println("id:"+id);
			//request의 메소드들을 이용해서 client가 날린 정보들을 알 수 있더라~! 
			
		 //지금은 톰캣 서버가 해석중. 자신의 서버쪽에서 지금 출력을 하고 있는 것임 우리는 클라이언트 화면에 출력하고 싶음 
		 //웹브라우저가 해석할 수 있는건 html 뿐임. 
		 //서버가 클라이언트에 html 서버를 넘겨주어야 하는것임
		 //이제 넘겨보자! 
		 //이제 response객체가 처리해보자~! response 객체를 통해서 응답을 하게 됨 httpServletResponse 객체 
			
	}
	
	
	
	
	
	
	
	
}
