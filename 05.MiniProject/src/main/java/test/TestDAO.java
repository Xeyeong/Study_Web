package test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class TestDAO {
	private static SqlSession sql ;
	static {
		String resource = "Mybatis/Config.xml"; // 설정 파일 경로 1-1
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sqlSessionFactory =
					  new SqlSessionFactoryBuilder().build(inputStream);
			sql = sqlSessionFactory.openSession(true);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	//insert,select,update,delete
	//CRUD(Create,Read,Update,Delete)
	
	//PreparedStatement 의 
	//executeQuery() 메소드에 해당하는 
	//SqlSession 의 메소드는 selectOne(), selectList() 
	
	//executeUpdate() 메소드에 해당하는
	//SqlSession 의 메소드는 insert(), update(), delete()
	
	//신규 테스트데이터 저장처리
	public int insert(TestDTO dto) {
		return sql.insert("test.insert", dto);
	}
	
	//테스트데이터 변경저장처리
	public int test_update(TestDTO dto) {
		return sql.update("test.update", dto);
	}
	
	
	//테스트데이터 목록 조회
	public List<TestDTO> getList() {
		//System.out.println(sql.selectOne("test.selectTest")+"");
		return sql.selectList("test.list");
	}
	
	//테스트데이터 상세 조회
	public TestDTO test_detail(int cd){
		return sql.selectOne("test.detail", cd);		
	}
	
}
