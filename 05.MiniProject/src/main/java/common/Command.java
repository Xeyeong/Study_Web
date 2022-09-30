package common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	//목록조회처리 실행, 데이터신규저장처리 실행, ...
	void execute(HttpServletRequest request, HttpServletResponse response);
}
