package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;
import hr.EmployeeCode;
import hr.EmployeeDetail;
import hr.EmployeeInsert;
import hr.EmployeeList;
import hr.EmployeeUpdate;

@WebServlet("*.hr")
public class HRController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		uri = uri.substring( context.length() );
		
		Command command ;
		String view = "";
		boolean redirect = false;
		if( uri.equals("/list.hr") ) {
			//사원목록화면 요청
			//DB에서 사원목록을 조회해와 
			//화면에 출력할 수 있도록 request에 attribute 로 담는다  
			new EmployeeList().execute(request, response);
			
			view = "hr/list.jsp";
			
		}else if(uri.equals("/modify.hr")) {
			//사원정보상세화면 요청
			//해당 사원의 정보를 DB에서 조회해와
			//화면에 출력할 수 있도록 Request에 attribute 로 담는다
			new EmployeeDetail().execute(request, response);
			
			//부서목록, 업무목록 
			new EmployeeCode().execute(request, response);
			
			//응답화면 연결
			view = "hr/modify.jsp";
			
			
		}else if ( uri.equals("/detail.hr")) {
			//사원정보상세화면 요청
			//해당 사원의 정보를 DB에서 조회해와
			//화면에 출력할 수 있도록 Request에 attribute 로 담는다
			new EmployeeDetail().execute(request, response);
			
			//응답화면 연결
			view = "hr/detail.jsp";
		}else if(uri.equals("/update.hr")) {
			
			//사원정보상세화면 요청
			//해당 사원의 정보를 DB에 변경저장한 후 
			new EmployeeUpdate().execute(request, response);
			//응답화면 연결
			view = "detail.hr?id="+ request.getParameter("employee_id");
			redirect = true;
			
		}else if(uri.equals("/delete.hr")) {
			//사원정보삭제처리
			//해당 사원정보를 DB에서 삭제한 후
			
			//응답화면 연결
			redirect = true;
			view = "list.hr";
			
		}else if(uri.equals("/new.hr")) {
		     //신규사원등록화면 요청
	         //부서,업무 코드성 데이터를 DB에서 조회해와 
			//신규사원등록화면에 출력할 수 있도록 request에 attribute로 담는다.
			new EmployeeCode().execute(request, response);
	         //응답화면 연결
	         view = "hr/new.jsp";
	         
	         
	      }else if( uri.equals("/insert.hr")) {
	         //신규고객등록처리 요청
	         //화면에서 입력한 정보를 DB에 신규저장
	    	 new EmployeeInsert().execute(request, response); 
	         //command = new EmployeeInsert();
	         //command.execute(request, response);
	         
	         //응답화면 연결
	         view = "list.hr";
	         redirect = true;
	         
	      }
		
		
		if( redirect )  response.sendRedirect(view);
		else 			request.getRequestDispatcher(view).forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
