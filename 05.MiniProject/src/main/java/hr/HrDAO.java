package hr;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class HrDAO {
	public static SqlSession sql;
	
	static {
		try {
			Reader reader = Resources.getResourceAsReader("Mybatis/hr-config.xml");
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build( reader );
			sql = factory.openSession( true );
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	//사용자의 행위 
	//-> Controller -> Command -> DAO -> mapper
	
	//CRUD(Create:insert, Read:select, Update, Delete)
	
	//관리자 목록 조회 메소드
	public List<EmployeeDTO> employee_manager() {
		return sql.selectList("hr.employee_manager");
	}
	
	//신규사원등록처리
	public void employee_insert(EmployeeDTO dto) {
		sql.insert("hr.employee_insert", dto);
	}
	
	//업무목록조회
	public List<JobsDTO> jobs_list() {
		return sql.selectList("hr.jobs_list");
	}
	
	//부서목록조회(회사에 등록되어 있는 전체부서목록)
	public List<DepartmentDTO> all_department_list() {
		return sql.selectList("hr.all_department_list");
	}
	
	
	//부서목록조회(사원이 소속되어 있는 부서목록)
	public List<DepartmentDTO> department_list() {
		return sql.selectList("hr.department_list");
	}
	
	//사원목록조회
	public List<EmployeeDTO> employee_list() {
		return sql.selectList("hr.employee_list");
	}
	//특정부서에 소속된 사원목록조회
	public List<EmployeeDTO> employee_list(int department_id) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("department_id", department_id);
		return sql.selectList("hr.department_employee_list", map);
	}
	
	//사원상세정보조회
	public EmployeeDTO employee_detail(int employee_id) {
		return sql.selectOne("hr.employee_detail", employee_id);
	}
	
	//사원정보변경저장
	public void employee_update(EmployeeDTO dto) {
		sql.update("hr.employee_update",dto);
	}
	
	//사원정보삭제처리
	public void employee_delete(int employee_id) {
		sql.delete("hr.employee_delete", employee_id);
	}
}
