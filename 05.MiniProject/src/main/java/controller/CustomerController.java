package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;
import customer.CustomerDelete;
import customer.CustomerDetail;
import customer.CustomerInsert;
import customer.CustomerList;
import customer.CustomerUpdate;

//1.크롬에서 톰캣경로뒤에 / 어떤 URL 패턴 문자열.cu로 끝나는 모든요청을 받는
//java파일(Controller)
@WebServlet("*.cu")
public class CustomerController extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String uri = req.getRequestURI();
		String context = req.getContextPath();
		uri = uri.substring( context.length() );
		
		boolean redirect = false;
		String view = "";
		Command command;
		if( uri.equals("/list.cu") ) {
			//고객목록화면 요청
			//비지니스로직 처리 실행 요청
			command = new CustomerList();
			command.execute(req, resp);
			
			// RequestDispatcher라는 객체를 통해서 페이지를 요청함
			view = "customer/list.jsp";
			
		}else if( uri.equals("/detail.cu") ) {
			//고객상세정보화면 요청
			command = new CustomerDetail();
			command.execute(req, resp);
			
			//응답화면 연결
			view = "customer/detail.jsp";
		
		}else if(uri.equals("/modify.cu")) {
			
			//고객정보수정화면 요청
			
			command = new CustomerDetail();
			command.execute(req, resp);
			
			//응답화면 연결
			view = "customer/modify.jsp";
		}else if(uri.equals("/update.cu")) {
			//고객정보수정처리 요청
			command = new CustomerUpdate();
			command.execute(req, resp);
			
			
			//응답화면 연결
			view = "detail.cu?id="+ req.getParameter("id");
			redirect = true;
		}else if(uri.equals("/delete.cu")) {
			
			//고객정보삭제처리요청
			
			command = new CustomerDelete();
			command.execute(req, resp);
			//응답화면 연결
			
			view = "list.cu";
			redirect = true;
			
		}else if(uri.equals("/new.cu")) {
			//신규고객등록화면 요청
			//응답화면 연결
			view = "customer/new.jsp";
			
		}else if(uri.equals("/insert.cu")) {
			//신규고객등록처리 요청
			//화면에서 입력한 정보를 DB에 신규저장
			command = new CustomerInsert();
			command.execute(req, resp);
			
			//응답화면 연결
			view = "list.cu";
			redirect = true;
			
		}
		
		
		if( redirect )
			resp.sendRedirect( view );
		else {
			RequestDispatcher rd = req.getRequestDispatcher(view);
			rd.forward(req, resp);//다음페이지로 요청
		}
		
	}

}
