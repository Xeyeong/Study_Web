package pack01_url;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Jsp?Servlet
//- 웹 브라우저(크롬, 익스플로러, 엣지)를 통해서 http, https를 통해 요청이 왔을때,
// 처리를 하는 클래스 => Servlet (extends HttpServlet)

// GET - FROM 태그 안에 있는 정보들을 URL주소에 그대로 노출시켜서 전송함. (보안은 안좋음)
// POST - FROM 태그 안에 있는 정보들을 전송하는데 URL에 노출을 안시킨다.(보안이 좋음)

@WebServlet("/Ex01_servlet")
public class Ex01_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
    public Ex01_servlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("사용자가 URL을 통해서 요청이 오면 여기가 실행됨");
	}

}
