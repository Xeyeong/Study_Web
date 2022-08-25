<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>반복문</h1>
	<!-- for ( 초기 변수; 조건; 증감식 ) for(;;)-->
	
	<% for(int i = 0; i < 10; i++) {%>
		<!-- HTML로 바복이 되는 구간 -->
		<p>연속으로 출력하기 <%=i %></p>	
	<%} %>
</body>
</html>