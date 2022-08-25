<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>포워드(forward)</h1>
	<!-- 액션태그는 JSP의 태그형태.
		현재 JSP 페이지 => 다른 JSP페이지로 이동하게 만드는 태그
		사용빈도가 낮음 (Spring FrameWork)
		Servlet ( 페이지 전환을 위한 자바객체) -->
		<jsp:forward page="Ex01_ForwardResult.jsp"></jsp:forward>
</body>
</html>