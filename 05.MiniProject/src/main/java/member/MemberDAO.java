package member;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDAO {
	public static SqlSession sql;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("Mybatis/Config.xml");
			SqlSessionFactory factory 
				= new SqlSessionFactoryBuilder().build(reader);
			sql = factory.openSession(true);			
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
	//CRUD(Create, Read, Update, Delete)
	//회원가입시 회원정보신규저장
	public int member_join(MemberDTO dto) {
		return 0;
	}
	
	//로그인시 회원정보 조회
	public MemberDTO member_login(String id, String pw) {
		return null;
	}
	
	//내정보보기 조회
	public MemberDTO member_myInfo(String id) {
		return null;
	}
	
	//아이디 중복확인(아이디) 조회
	public int member_id_check(String id) {
		return sql.selectOne("member.id_check", id);
	}
	
	//내정보변경
	public int member_update(MemberDTO dto) {
		return 0;
	}
	
	//회원탈퇴
	public int member_delete(String id) {
		return 0;
	}
	
	
}
