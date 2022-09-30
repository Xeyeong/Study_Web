package customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;

public class CustomerInsert implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//화면에서 입력한 정보를 DB에 신규저장
		//화면에서 입력한 정보를 수집
		CustomerVO vo = new CustomerVO();
		vo.setId(request.getParameter("id"));
		vo.setName(request.getParameter("name"));
		vo.setGender(request.getParameter("gender"));
		vo.setPhone(request.getParameter("phone"));
		vo.setAddr(request.getParameter("addr"));
		
		// -> DB연결
		CustomerDAO dao = new CustomerDAO();
		
		// -> 신규저장처리 메소드 호출
		dao.customer_insert(vo);
	}

}
