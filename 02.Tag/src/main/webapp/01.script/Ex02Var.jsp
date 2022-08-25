<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1> 자바 코드 + HTML 태그</h1>
	<%
		int vInt = 10;
		String vStr = "테스트 중입니다.";
		double vDouble = 3.14;
		ArrayList<String> sList = new ArrayList<String>();
		sList.add("J");
		sList.add("S");
		sList.add("Y");
	%> <!-- 자바코드 (스크립틀릿 태그) -->
	<p> vInt : <%=vInt %></p><!-- 태그 안쪽에 그냥 변수이름을 넣으면 그냥 글자
								  변수의 값을 출력하고싶으면 다시 JAVA영역을 만들어야함(표현)-->
	<p> vStr  : <%=vStr %></p>
	<!-- 나머지 변수들도 전부 p태그를 이용해서 출력해보기. -->
	<p> double : <%=vDouble %></p>
	<p> ArrayList : <%=sList.get(0) + sList.get(1) + sList.get(2)%></p>
</body>
</html>









