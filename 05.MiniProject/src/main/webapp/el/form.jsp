<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/include/header.jsp" />

<h3>form 태그 데이터</h3>

<!-- <form method='post' action='parameter.el'> -->
<form method='post' action='el/form_info.jsp'>
<table class='styled-table'>
<tr><th>이름</th>
	<td><input type='text' name='name'></td>
</tr>
<tr><th>성별</th>
	<td><input type='radio' name='gender' value='남' id='male'><label for='male'>남</label>
		<label><input type='radio' name='gender' value='여' checked>여</label>
	</td>
</tr>
<tr><th>취미</th>
	<td><label><input type='checkbox' name='hobby' value='스포츠'>스포츠</label>
		<label><input type='checkbox' name='hobby' value='바둑'>바둑</label>
		<label><input type='checkbox' name='hobby' value='낚시'>낚시</label>
		<label><input type='checkbox' name='hobby' value='유투브보기'>유투브보기</label>
	</td>
</tr>
</table>
<div class='list-top'>
	<input type='submit' value='저장'>
</div>
</form>


<jsp:include page="/include/footer.jsp" />
</body>
</html>