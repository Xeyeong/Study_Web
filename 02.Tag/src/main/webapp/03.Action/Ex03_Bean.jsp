<%@page import="dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 빈 객체 </h1>
	<p> 스프링에서는 매우 중요한 객체이지만 지금 다배워놔도 어차피 까먹음 </p>
	<p> 이런게 있구나 하고 개념만 알고있으면 됨 </p>
	<!-- 객체를 생성하고 스크립트태그 %% 로 생성
			안에 값을 모두 넣고 나서 표현문 태그로 출력해보기. ( p, a, h2)
	 -->
		<!-- !전역변수 자바코드영역 set메소드를 사용불가 -->
			 
	 <% UserDTO dto = new UserDTO();
		dto.setName("jsy");
	 	dto.setAddrs("동명동"); 
	 	dto.setTel("010-1234-5678");
	 %>
	 <p><%= dto.getName() %></p>
	 <p><%= dto.getAddrs() %></p>
	 <p><%= dto.getTel() %></p>
	 <!-- JSP (Spring) Bean 객체로 만들기 (==자동) 코드를 외우거나 복습할 필요 x -->
	 <jsp:useBean id="beanDto" class="dto.UserDTO"/>
	 <jsp:setProperty name="beanDto" property="name" value="jsy" />
	 <jsp:setProperty name="beanDto" property="addrs" value="동명동" />
	 <jsp:setProperty name="beanDto" property="tel" value="010-1234-5678" />
	 
		<h2>빈(액션태그) : <jsp:getProperty name="beanDto" property="name" /> </h2>
		<h2>빈(액션태그) : <jsp:getProperty name="beanDto" property="addrs" /> </h2>
		<h2>빈(액션태그) : <jsp:getProperty name="beanDto" property="tel" /> </h2>
</body>
</html>








