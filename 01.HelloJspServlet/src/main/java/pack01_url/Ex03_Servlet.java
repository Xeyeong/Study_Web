package pack01_url;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex03")
public class Ex03_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	// Request ( 요청 ) , Response ( 응답 )
	// 요청 : 크롬창에 어떤 URL을 넣어놓고 Enter Key, Form에서 전송함
	// 응답 : 어떠한 응답처리를 할건지를 정함(페이지전환, 바로 값으로 응답)
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(" 요청이 들어옴 request ");
		System.out.println(request.getParameter("value"));
		response.getWriter().append("RESPONSE");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(" 요청이 들어옴 post ");
		// request에 들어있는 value값을 출력하기.
		System.out.println(request.getParameter("value"));
		// 여기는 아직 몰라도됨 한번 사용한거임. request, response
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<body>");
		writer.println("<h1> Hello Post</h1>");
		writer.println("</body>");
		writer.println("</html>");
	}

}
