package customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;

public class CustomerDetail implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//DB에서 해당 고객정보를 조회해와: DB연결 -> 조회메소드 호출
		CustomerDAO dao = new CustomerDAO();
		CustomerVO vo = dao.getDetail( request.getParameter("id") );
		
		//화면에 출력할 수 있도록 request 에 attribute 로 담는다. : 비지니스 로직
		request.setAttribute("vo", vo);
	}

}
