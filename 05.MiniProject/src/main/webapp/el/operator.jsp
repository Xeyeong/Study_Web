<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<h3>연산자</h3>
<div>산술연산자: + - * /(div) %(mod)</div>
<form method='post' action='calculator.jsp'>
<div>
	<input type='text' name='no1'>
	<input type='text' name='no2'>
</div>
<div>
	<input type='submit' value='계산하기'>
</div>
</form>

<jsp:include page="/include/footer.jsp"/>
</body>
</html>