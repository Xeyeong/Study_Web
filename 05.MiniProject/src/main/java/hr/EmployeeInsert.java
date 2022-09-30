package hr;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;

public class EmployeeInsert implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//화면에서 입력한 정보를 DB에 신규저장처리 한 후
		//1. 화면에서 입력한 정보를 수집
		EmployeeDTO dto = new EmployeeDTO();
		dto.setFirst_name(request.getParameter("first_name"));
		dto.setLast_name(request.getParameter("last_name"));
		dto.setEmail(request.getParameter("email"));
		dto.setPhone_number(request.getParameter("phone_number"));
		//String -> Date
		dto.setHire_date(Date.valueOf( request.getParameter("hire_date")));
		dto.setSalary(Integer.parseInt(request.getParameter("salary")));
		
		dto.setDepartment_id(Integer.parseInt(request.getParameter("department_id")));
		dto.setJob_id(request.getParameter("job_id"));
		dto.setManager_id(Integer.parseInt(request.getParameter("manager_id")));
		//2. DB연결
		HrDAO dao = new HrDAO();
		
		//3. 신규저장처리 메소드 호출
		dao.employee_insert(dto);
	}
	
}
