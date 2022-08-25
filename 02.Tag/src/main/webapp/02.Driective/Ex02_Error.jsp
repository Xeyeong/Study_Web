<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>현재 알수없는 오류가 발생했습니다.</h1>
	<h2>개발자가 수정중이오니 양해 부탁드립니다. 최대한 빠르게 대응하도록 하겠습니다.</h2>
	<!-- JSP 컨테이너(큰 클래스) 내장 객체 : 개발자의 편의를 위한 객체들 -->
	<!-- 나중에 배우는 부분 지금은 컨테이너 라는게 큰 클래스 개념이고 안에 필요한 객체들이
		존재한다.
	 -->
	 <!-- Exception 내장객체를 사용하려면 현재 페이지가 에러페이지를 처리하는 곳인지를 명시 -->
	 <h2>Exception 내장객체 (변수)를 이용해서 에러를 표시하기</h2>
	 <%
	 	exception.printStackTrace(new PrintWriter(out));
	 	//아직 몰라도 되는부분, 현재 에러페이지를 처리하는 곳이면 페이지설정에서 isErrorPage=true줘야함
	 %>
</body>
</html>







