<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>선언문</h1>
	<%! String var = "sy"; %> <!-- 전역 변수 선언(필드, 멤버 변수) -->
	<% String lv = "지역변수"; %> <!-- 지역 변수 -->
	<!-- 지역변수를 표현문 태그로 HTML바디 부분에 보이게 하고, 값을 바꿔서도 보이게 해보기 -->
	<%=lv %>
	
	<h1>HTML 태그</h1>
	<%=var %><!-- 표현문 선언 된 변수나 메소드등의 결과를 BODY에 보여주기 위한 부분 -->
	<h1>HTML 태그</h1>
	<% var = "다른값"; lv="다른값"; %><!-- 스크립틀릿태그 : 자바코드를 수정하거나 자바 작업을 위한 공간.(자바영역) -->
	<%=var %>
	<%=lv %>
</body>
</html>