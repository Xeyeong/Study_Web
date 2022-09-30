<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/include/header.jsp" %>
<h3>신규데이터 입력</h3>
<form method='post' action='insert.te'>
<table class="styled-table">
	<tr><th>데이터1</th>
		<td><input type='text' name='test_data1'></td>
	</tr>
	<tr><th>데이터2</th>
		<td><input type='text' name='test_data2'></td>
	</tr>
	<tr><th>데이터3</th>
		<td><input type='text' name='test_data3'></td>
	</tr>
</table>
<div style='margin:0 auto' class='list-top'>
	<input type='submit' value='저장'>
</div>
</form>


<%@ include file="/include/footer.jsp" %>
</body>
</html>