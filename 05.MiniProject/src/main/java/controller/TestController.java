package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.TestDAO;
import test.TestDTO;


@WebServlet("*.te")
public class TestController extends HttpServlet {
//CRUD , 읽고 쓰고 지우고 수정하고,
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("사용자가 앵커 태그를 이용해서 요청함 다음페이지.");
		
//		System.out.println(  req.getRequestURL() );
//		System.out.println(  req.getRequestURI() );
//		System.out.println( req.getContextPath() );
		String uri = req.getRequestURI();
		String app = req.getContextPath();
		uri = uri.substring( app.length() );
		
		TestDAO dao = new TestDAO();
		
		String view = "";
		boolean redirect = false;
		
		if( uri.equals("/list.te") ) {
			//데이터목록화면 요청
			
			//DB에서 데이터를 조회해와 화면에 출력할 수 있도록 데이터를 담아둔다.
			req.setAttribute("list", dao.getList());
			//응답화면 연결
			//: forward방식, redirect방식
			//  forward: 요청url 과 응답페이지가 다를 수 있다.
			//  redirect: 요청url 과 응답페이지가 같다.
			view = "test/list.jsp";
			
		}else if( uri.equals("/new.te") ) {
			//신규데이터 입력화면 요청
			view = "test/new.jsp";
			
		}else if( uri.equals("/insert.te") ) {
			//파라미터로 넘겨진 데이터의 한글이 깨지지 않도록 인코딩
			//req.setCharacterEncoding("utf-8");
			//신규데이터 저장처리 요청
			//화면에서 입력한 정보를 DB에 저장한다.
			//화면에서 입력한 정보를 수집 -> DB연결 -> 데이터저장처리
			String data1 = req.getParameter("test_data1");
			String data2 = req.getParameter("test_data2");
			String data3 = req.getParameter("test_data3");
			TestDTO dto = new TestDTO();
			dto.setTest_data1( data1 );
			dto.setTest_data2( data2 );
			dto.setTest_data3( data3 );
			dao.insert(dto);
			
			//응답화면 연결: 목록화면
			view = "list.te";
			redirect = true;
		
		}else if( uri.equals("/detail.te") ) {
			//해당 글의 정보를 DB에서 조회해와			
			//String -> int 변환			
			//String cd = req.getParameter("cd");
			int cd1 = Integer.parseInt( req.getParameter("cd") );		//int	
			//Integer -> int : Auto UnBoxing
			//Integer dd = Integer.valueOf( req.getParameter("cd") );
			int cd2 = Integer.valueOf( req.getParameter("cd") );		//Integer	
			
			TestDTO dto = dao.test_detail(cd1);
			
			//화면에 출력할 수 있도록 request 에 attribute 로 담는다
			req.setAttribute("dto", dto);
			
			//응답화면 연결: 상세화면
			view = "test/detail.jsp";
			
		}else if( uri.equals("/modify.te") ) {
			//해당 테스트데이터를 수정화면에 출력
			//해당 데이터를 DB에서 조회해와 화면에서 출력할 수 있도록
			int cd = Integer.parseInt( req.getParameter("cd") );
			TestDTO dto = dao.test_detail( cd );
			
			//request 에 attribute 로 데이터를 담는다
			req.setAttribute("dto", dto);
			
			//응답화면 연결: 수정화면
			view = "test/modify.jsp";
			
		}else if( uri.equals("/update.te") ) {
			//req.setCharacterEncoding("utf-8");
			
			//화면에서 변경입력한 정보를 DB에 변경저장한 후
			//화면에서 변경입력한 정보를 수집 -> 변경저장메소드 호출
			TestDTO dto = new TestDTO();
			dto.setTest_data1( req.getParameter("test_data1") ); 
			dto.setTest_data2( req.getParameter("test_data2") ); 
			dto.setTest_data3( req.getParameter("test_data3") );
			dto.setTest_cd( Integer.parseInt( req.getParameter("cd") ) );
			dao.test_update(dto);
			
			//응답화면 연결: 상세화면
			view = "detail.te?cd=" + req.getParameter("cd");
			redirect = true;
			
		}else if( uri.equals("/delete.te") ) {
			//DB에서 해당 테스트데이터행을 삭제한 후
			
			//응답화면연결 : 목록화면
			view = "list.te";
			redirect = true;
					
		}
		
		//요청 uri 가 DB연결해 insert/update/delete 처리가 발생하는 
		//요청인 경우 화면연결을 redirect 한다.
		if( redirect )
			resp.sendRedirect(view);
		else
			req.getRequestDispatcher(view).forward(req, resp);
		
		//;//return이 있는 메소드를 실행.
		/*
		 	RequestDispatcher rd = req.getRequestDispatcher(view);
		   rd.forward(req, resp);
		  
		 * */
		
		
		
	}
}
