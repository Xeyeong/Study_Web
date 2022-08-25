<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 반복되는 헤더나 푸터를 계속 복붙해서 코드를 사용하는게 아니라 -x
		파일에 포함을 시킬수있음.(미리 만들어놓은 다른파일을 이용)
		헤더와 푸터 파일 자체를 재사용했기때문에 수정이 필요하다면 헤더파일 하나만 수정해도
		모든 페이지에 적용되는 장점이 있다.
	 -->
	 <!-- index.jsp 에 메뉴하나추가 (li) -->
	 <%@ include file="Ex03_Header.jsp" %>
	 <p>방문해주셔서 감사합니다.</p>
	 <p>메인 페이지입니다.</p>
	 <p>컨텐츠</p>
	 
	 <%@ include file="Ex03_Footer.jsp" %>
</body>
</html>