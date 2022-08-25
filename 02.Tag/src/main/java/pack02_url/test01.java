package pack02_url;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// mapping ( 특정 글자)
// tomcat 경로 + "/" + 특정글자
// IP + 프로젝트 경로( server.xml 에 맨 끝에 path)
// Ex) localhost(ip)/tag/test01
// 해당하는 서블릿파일의 get 또는 post 메소드가 호출
@WebServlet("/test01")
public class test01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public test01() {
     
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(" 요청이 들어옴. test01");
		//Controller - 어떤 페이지로 이동할지를 자바코드가 결정함.
		//Cotroller의 기능만 이해하기
		//if문이나 Database연동을 통해서 더욱 동적으로 페이지 전환을 컨트롤할수있음.
		
		RequestDispatcher rd = request.getRequestDispatcher("01.script/Ex00Into.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(" 요청이 들어옴. test01");
			
	}

}
    

