<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>디렉티브 태그 ( Driective )</h1>
	<h4>ContentType : 어떤 형태로 페이지를 출력할건지에 대한 결정</h4>
	<h4>charset=utf-8  : 문자 인코딩 (각 나라별 언어마다 인코딩 방식이 다름. 한글 utf-8) </h4>
	
	<%@ page import="java.util.Date" %>
	<!-- java.util.Date라는 클래스를 사용하기위해서 기능을 추가함.
		자동완성을 안해주면 손으로 직접 임포를 해야함 ( 자바 프로젝트처럼 import를 도와주지않음) -->
	<h4> import : 자바 클래스 추가 <%=new Date() %></h4>
	<!-- Random클래스를 이용해서 1~100사이의 수가 랜덤하게 출력되게 만들어보기(HTML) -->
	
	<%Random random = new Random();%>
				<%=random.nextInt(100)+1 %> <!-- +1을 해야 1부터 100까지 출력 -->
	<h4>랜덤수 : <%= new Random().nextInt(100)+1 %></h4>
	<!--  랜덤한 수가 홀수인지 짝수인지를 판단해서 HTML에 보여주기 (랜덤한 수도 보여주고) -->
	
	
	<%Random rd = new Random();%>
	<%int i = rd.nextInt(100)+1; %>
	<%if( i % 2 == 0) {%>
		<p>짝수<%= i%></p>
	<%}else { %>
		<p>홀수<%= i%></p>
	<%} %>

		
</body>
</html>







