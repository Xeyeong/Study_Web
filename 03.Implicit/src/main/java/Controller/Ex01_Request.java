package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//WebServlet (" ")가 의미하는것은
//URL로 부터 특정한 문자열이 들어왔을때 처리를 하겠다 fksms
//규칙을 가지고 있다 == URL MAPPING
//Servlet파일이 추가되었을때 , xml 파일이 수정되었을때는
//반드시 서버를 리스타트 해줘야함.


@WebServlet("/Ex01_Request")
public class Ex01_Request extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Ex01_Request() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		// 요청을 할때 폼태그 안에있는 정보를 받아오는 처리
		// 요청에 관한 모든정보 ==> Request가 가지고있음
		String id = "";
		String pw = "";
		
			if(req.getParameter("id").equals("admin") && req.getParameter("pw").equals("admin1234")) {
					System.out.println("로그인 되었습니다.");
				}else {
					System.out.println("아이디 비밀번호를 확인해 주세요.");
			}
	
		System.out.println(req.getParameter("name"));
		System.out.println(req.getParameter("id"));
		System.out.println(req.getParameter("pw"));
		
		
	}
	
	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		
		//POST요청이 들어왔을때 실행되는 메소드
		// 이름이 master, id가 admin , pw가 1234일때 관리자가 로그인 되었습니다.
		// 그게 아니라면 로그인이 실패했습니다.
		//req.getParameter <-메소드 String 값을 리턴하는 메소드
		//String 변수에 값을 안담고도 처리가 가능
		
		String name = "";
		String id = "";
		String pw = "";
		
		if(req.getParameter("name").equals("master") &&
			req.getParameter("id").equals("admin") &&
			req.getParameter("pw").equals("admin1234")) {
			System.out.println("관리자가 로그인이 되었습니다.");
		}else {
			System.out.println("로그인이 실패했습니다.");
		}
		
		System.out.println(req.getParameter("name"));
		System.out.println(req.getParameter("id"));
		System.out.println(req.getParameter("pw"));
	}
}
