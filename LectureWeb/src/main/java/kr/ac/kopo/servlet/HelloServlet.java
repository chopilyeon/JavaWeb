package kr.ac.kopo.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//ojdbc 전에 이용하듯이 
//tomcat 가서 servlet-api 가져 와야함 
//web은 build path를 통해 추가하지 않음. servlet api 를 복사후에 src main webapp 밑의 lib에 복사해서 넣어주면 됨 
//build path하면은  reference라고 나왔음 
//근데 우리가 이번에 api 추가해주니까 web app libraries가 생김 
public class HelloServlet extends HttpServlet{ //이거 인식하게 하는 거 tomcat 서버에 있음. 

	
	//init은 상속받아서 사용함 
	@Override
	public void init(ServletConfig config) throws ServletException{
		System.out.println("init(): 최초 한번만 실행되는 메소드입니다.");
		
	}
	//요청을 처리하는 부분과 응답을 처리하는부분임
	@Override
	public void service(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		System.out.println("service(): 실제 작업이 수행되는 메소드입니다. 요청이 들어올때마다 호출됩니다.");
		
	}
	
	
	@Override
	public void destroy() {
		System.out.println("\t\t\t\t\t\t\t destroy()...");
		
	}
	
	
}
