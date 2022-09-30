package customer;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class CustomerDAO {
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
	
	
	//CRUD(Create:Insert, Read:Select, Update, Delete)
	//insert.cu,  list.cu,  detail.cu,   update.cu,   delete.cu, ....

	//신규고객정보저장
	public void customer_insert(CustomerVO vo) {
		sql.insert("cus.insert", vo);
	}
	
	//고객정보삭제
	public int customer_delete(int id) {
		return sql.delete("cus.delete", id);
	}
	
	
	//고객정보 변경저장 처리
	public int set_update(CustomerVO vo) {
		return sql.update("cus.update", vo);
		
	}

	//해당 고객정보 조회
	public CustomerVO getDetail(String id) {
		return sql.selectOne("cus.detail", id);
	}
	
	
	//전체 고객목록 조회
	public List<CustomerVO> getList() {		//mapper파일에 있는 namespace.id
		return sql.selectList("cus.list") ;//초기 데이터 2건 추가
										  //sqlSelectList==2나와야함
	}
	
	
}
