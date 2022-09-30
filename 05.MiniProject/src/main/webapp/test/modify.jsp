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
<h3>데이터 수정</h3>
<form method='post' action='update.te'>
<input type='hidden' name='cd' value='${dto.test_cd}'>
<table class="styled-table">
	<tr><th>데이터1</th>
		<td><input type='text' name='test_data1' value='${dto.test_data1}'></td>
	</tr>
	<tr><th>데이터2</th>
		<td><input type='text' name='test_data2' value='${dto.test_data2}'></td>
	</tr>
	<tr><th>데이터3</th>
		<td><input type='text' name='test_data3' value='${dto.test_data3}'></td>
	</tr>
</table>
<div style='margin:0 auto' class='list-top'>
	<input type='submit' value='저장'>
	<input type='button' value='취소' onclick="location='detail.te?cd=${dto.test_cd}'">
</div>
</form>


<%@ include file="/include/footer.jsp" %>
</body>
</html>