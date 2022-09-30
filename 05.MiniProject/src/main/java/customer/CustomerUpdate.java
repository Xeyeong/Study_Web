package customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;

public class CustomerUpdate implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//화면에서 변경입력한 정보를 DB에 변경저장한다.
		// 1.화면에서 변경입력한 정보 수집하기
		CustomerVO vo = new CustomerVO();
		vo.setId(request.getParameter("id"));
		vo.setName(request.getParameter("name"));
		vo.setGender(request.getParameter("gender"));
		vo.setPhone(request.getParameter("phone"));
		vo.setAddr(request.getParameter("addr"));
		// 2. DB 연결
		CustomerDAO dao = new CustomerDAO();
		// 3. 변경저장처리 메소드 호출
		dao.set_update(vo);
	
	}

}




