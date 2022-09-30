package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ELController
 */
@WebServlet("*.el")
public class ELController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String app = request.getContextPath();
		uri = uri.substring( app.length() );
		
		String view = "";
		boolean redirect = false;
		if( uri.equals("/list.el") ) {
			view = "el/list.jsp";
			
		}else if( uri.equals("/scope.el") ) {
			
			request.setAttribute("data", 100);
			
			HttpSession session = request.getSession();
			session.setAttribute("data", 200);
			
			view = "el/scope_data.jsp";
			
		}else if( uri.equals("/form.el")) {
			view = "el/form.jsp";
			
		}else if( uri.equals("/parameter.el")) {
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");
//			String hobby = request.getParameter("hobby");
			String hobby[] = request.getParameterValues("hobby");
			String hobbies = ""; //스포츠,바둑
//			&hobby=가&hobby=나&hobby=다
//			for(int idx=0; idx < hobby.length; idx++ ) {
//				hobbies += (hobbies.isEmpty()? "" : ",") + hobby[idx];
////				hobbies += (idx>0 ? "," : "") + hobby[idx];
//			}
//			hobbies = "";
//			for(String h : hobby) {
//				hobbies += (hobbies.isEmpty()? "" : ",") + h;
//			}
			for(String h : hobby) {
				hobbies += "&hobby=" + h;
			}
			
			
			//name=홍기동&gender=남&hobby=스포츠&hobby=바둑
			view = "el/form_info.jsp?name="+ name +"&gender="+gender
							+ hobbies;
			
		}
		
		if( redirect )
			response.sendRedirect(view);
		else
			request.getRequestDispatcher(view).forward(request, response);
	}

}
