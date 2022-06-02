/*package kr.ac.kopo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ExamServlet {
	
	
	 * http://localhost:9999/Lecture-Web/servlet/exam?
	 * 
	 * 웹브라우저에 
	 * 이름:hong 이렇게 출력이 되도록 만들어보자.
	 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//request에 client가 server에 요청한 정보들이 다 담겨 있음 그 요청 객체를 통해서 parameter들을 추출하고 싶다
		
		
		
		//String method=request.getMethod(); 
		
		//get방식인지 post방식인지 궁금함 		
		//String uri =request.getRequestURI();
		
		String name  =	request.getParameter("name");
		//StringBuffer url =request.getRequestURL(); // 이건 return type이 STRING buffer임
		
		
		
		
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
		out.println("  파라미터(name):"+name+"<br>");
		//out.println("  요청방식:"+method+"<br>");
		//out.println("  uri:"+uri+"<br>");
		
		out.println("   ========================================<br>");

		out.println("   ========================================<br>");
		out.println(" </body>");
		out.println("</html");
			
		//id란 속성으로 들어온 value값이 궁금함 
		 //System.out.println("요청 Method : "+method);
		 //System.out.println("요청 URI" + uri);
		 //System.out.println("요청 url"+url.toString()); //우리한테 중요한건 uri 
		 //url은 실제 각각의 server가 갖고 있는 요소들을 구분할 수 있는 구분자를 포트 프로토콜 경로들을 포함한 것임 리소스가 진짜 어디에 있는지  
		 //uri 오직 그냥 내 서버내에서 자원들을 구분할 수 있는 경로들을 의미함
		 //server입자에서 Lectureweb밑에 여기저기 있는 자원들을 접근할 수 있는 경로를 표현하는데 프로토콜들과 포트를 포함하느냐 이 차이임. 
		 //System.out.println("id:"+id);
			//request의 메소드들을 이용해서 client가 날린 정보들을 알 수 있더라~! 
			
		 //지금은 톰캣 서버가 해석중. 자신의 서버쪽에서 지금 출력을 하고 있는 것임 우리는 클라이언트 화면에 출력하고 싶음 
		 //웹브라우저가 해석할 수 있는건 html 뿐임. 
		 //서버가 클라이언트에 html 서버를 넘겨주어야 하는것임
		 //이제 넘겨보자! 
		 //이제 response객체가 처리해보자~! response 객체를 통해서 응답을 하게 됨 httpServletResponse 객체 
			
	}
	
	*/
	package kr.ac.kopo.servlet;

	import java.io.IOException;
	import java.io.PrintWriter;

	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;

	@WebServlet("/servlet/exam") //servlet/exam으로 들어오면 처리할 것임.우리가 web.xml에 안써줘도 annotation으로 처리할 수 있는 것임. 근데 web.xml 에 설정안하면 servlet/exam으로 우리가 접속하나?
	public class ExamServlet extends HttpServlet {
		
		/*
		 	http://localhost:9999/Lecture-Web/servlet/exam
		 			?name=hong&hobby=reading&hobby=music&hobby=movie 입력시
		 	
		 	웹브라우저에 다음의 결과가 응답됨
		 	이름 : hong
		 	취미 : reading music movie
		 */

		@Override
		protected void service(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			
			String name = request.getParameter("name");
			//String hobby = request.getParameter("hobby");
			String [] hobby = request.getParameterValues("hobby"); // 이러면 복수개 갖고 있음 string 배열이 됨 
			//String hobby2 = request.getParameter("hobby");
			
			
			
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<head><title>서블릿연습</title></head>");
			out.println("<body>");
			out.println("	이름 : " + name + "<br>");
			for(int i =0 ; i<hobby.length;i++) {
				out.println(hobby[i]+"&nbsp;&nbsp;");
			}
			
			
			//out.println("	취미 : " + hobby + "<br>");
			//out.println("	취미 : " + hobby2 + "<br>");	 //reading만 나옴 music이 안나오더라~! 제일 처음으로 나오놈만 split해서 뽑아냄 제일 처음으로 나온 속성에 대한 값만 뽑아내더라~! music movie를 뽑아낼 수 없음 hobby라는 속성의 값으로 여러개를 넘겼음 
			//이럴때 쓰는 메소드가 
			out.println("<br>");
			out.println("</body>");
			out.println("</html>"); //클라이언트들한테는 문자열만 날라가는 것임. 클라이언트는 배열인지 뭔지는 모름 그냥 날라오는지만 알고 있음. 실제 서버에서 어떤식의 로직을 통해 날라오는지는 모름.저런식의 처리를 하는 경우가 있을까? checkbox 형태면 저렇게 날라가게 된다!
			out.close();
		}
	}



	
	
	
	
	
	
	
	
	

