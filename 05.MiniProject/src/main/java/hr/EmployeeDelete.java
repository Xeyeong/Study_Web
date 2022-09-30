package hr;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;

public class EmployeeDelete implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//해당 사원정보를 DB에서 삭제한다
		//DB연결 -> 사원정보삭제 메소드 호출
		new EmployeeDelete().execute(request, response);
		
		int id = Integer.parseInt(request.getParameter("id"));
		new HrDAO().employee_delete(0);
		
	}

}
