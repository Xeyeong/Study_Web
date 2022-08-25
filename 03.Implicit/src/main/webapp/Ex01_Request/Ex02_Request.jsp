<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 동적으로 여러개 전송 </h1>
	<form action="../Ex02_Request" method="post">
	<!-- 파라메터를 30개 보낼수있는 구조를 만들기
		name1
		name2
		name3
		.
		.
		.
		name30
	 -->
	 
	 	<%for(int i = 0; i <= 30; i++) {%>
	 	<input type="text" name="name<%=i %>" value="name<%=i %>" />
		
	 	<%} %>
	 	
		<input type="submit" value="전송" />
	</form>
</body>
</html>