package hr;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;

public class EmployeeCode implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		//부서목록, 업무목록 정보(코드성 데이터 : 마스터 ) 를 조회해와
        //부서,업무 코드성 데이터를 DB에서 조회해와
		//신규사원등록화면에 출력할 수 있도록 request에 attribute로 담는다.
       
		
		//DB연결 -> 부서목록조회 메소드
		//DB연결 -> 업무목록조회 메소드
		//DB연결 -> 관리자 목록 조회 메소드
		HrDAO dao = new HrDAO();
		List<DepartmentDTO> departments = dao.all_department_list();
		List<JobsDTO> jobs = dao.jobs_list();
		List<EmployeeDTO> managers = dao.employee_manager(); 
		//화면(변경/신규)에 출력할 수 있도록 request에 attribute로 담는다
		
		request.setAttribute("departments", departments);
		request.setAttribute("jobs", jobs);
		request.setAttribute("managers", managers);
		
	}

}
