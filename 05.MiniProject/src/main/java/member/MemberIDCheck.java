package member;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;

public class MemberIDCheck implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//화면에서 입력한 아이디가 DB에 존재여부 확인
		//DB연결 -> 아이디존재여부확인 메소드 호출
		MemberDAO dao = new MemberDAO();
		int id = dao.member_id_check( request.getParameter("id"));
		try {
			response.getWriter().println(id);
		}catch(Exception e) {}
	}

}
