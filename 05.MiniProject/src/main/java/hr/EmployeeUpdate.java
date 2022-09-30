package hr;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;

public class EmployeeUpdate implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//화면에서 변경입력한 정보를 DB에 변경저장한다
		//화면에서 변경입력한 정보 수집
		EmployeeDTO dto = new EmployeeDTO();
		dto.setEmployee_id(Integer.parseInt( request.getParameter("employee_id")));
		dto.setLast_name(request.getParameter("last_name"));
		dto.setFirst_name(request.getParameter("first_name"));
		dto.setEmail(request.getParameter("email"));
		dto.setPhone_number(request.getParameter("phone_number"));
		//String -> Date
		dto.setHire_date(Date.valueOf( request.getParameter("hire_date")));
		dto.setSalary(Integer.parseInt(request.getParameter("salary")));
		
		dto.setDepartment_id(Integer.parseInt(request.getParameter("department_id")));
		dto.setJob_id(request.getParameter("job_id"));
		
		
		//-> DB연결
		//-> 변경저장처리 메소드 호출
		new HrDAO().employee_update(dto);
		
	}

}
