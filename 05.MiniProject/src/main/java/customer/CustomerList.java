package customer;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;

public class CustomerList implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		//비지니스 로직
		CustomerDAO dao = new CustomerDAO();
		List<CustomerVO> list = dao.getList();
		request.setAttribute("list", list);//다음페이지에 데이터 보냄.(list라는이름)

	}

}
