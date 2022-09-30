package hr;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;

public class EmployeeDetail implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//해당 사원의 정보를 DB에서 조회해와
		//DB연결 -> 해당 사원정보 조회 메소드 호출
		int id = Integer.parseInt(request.getParameter("id"));
		EmployeeDTO dto = new HrDAO().employee_detail(id);
		
		//화면에 출력할 수 있도록 Request에 attribute 로 담는다
		request.setAttribute("dto", dto);
		
	}

}
