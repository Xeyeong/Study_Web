package hr;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;

public class EmployeeList implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//DB에서 사원목록을 조회해와 
		//DB연결 -> 사원목록조회 메소드 호출
		//			부서목록조회 메소드 호출
		HrDAO dao = new HrDAO();
		//파라미터가 없는 경우, 파라미터가 -1인 경우
		List<EmployeeDTO> list;
		if( request.getParameter("department_id")==null 
				|| request.getParameter("department_id").equals("-1")) {
			list = dao.employee_list();
		}else {
			//파라미터로 department_id 가 넘겨진 경우
			int department_id = Integer.parseInt(
									request.getParameter("department_id") );
			list = dao.employee_list(department_id);
			request.setAttribute("department_id", department_id);
			
		}
		
		List<DepartmentDTO> departments = dao.department_list();
		
		//화면에 출력할 수 있도록 request에 attribute 로 담는다
		request.setAttribute("list", list);
		request.setAttribute("departments", departments);
	}

}
