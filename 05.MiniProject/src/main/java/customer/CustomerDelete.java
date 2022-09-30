package customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;

public class CustomerDelete implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//해당 고객정보를 DB에서 삭제한 후
		//DB연결 -> 고객정보삭제 메소드 호출
		CustomerDAO dao = new CustomerDAO();
		int id = Integer.parseInt(request.getParameter("id"));
		dao.customer_delete(id);
		
		
		
	}

}
