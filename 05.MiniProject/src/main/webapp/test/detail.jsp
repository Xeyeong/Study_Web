<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file="../include/header.jsp" %>
<h3>테스트데이터 상세</h3>
<table class="styled-table">
	<tr><th class='w-px200'>코드</th>
		<td>${dto.test_cd}</td>
	</tr>
	<tr><th>데이터1</th>
		<td>${dto.test_data1 }</td>
	</tr>
	<tr><th>데이터2</th>
		<td>${dto.test_data2 }</td>
	</tr>
	<tr><th>데이터3</th>
		<td>${dto.test_data3 }</td>
	</tr>
</table>
<div class='list-top'>
<input type='button' value='목록으로' onclick='location="list.te"'>
<input type='button' value='정보수정' 
					onclick='location="modify.te?cd=${param.cd}"'>
<%-- 					onclick='location="modify.te?cd=${dto.test_cd}"'> --%>
<input type='button' value='정보삭제'
		onclick="if( confirm('정말 삭제?') ){ location='delete.te?cd=${dto.test_cd}' }">
</div>

<jsp:include page="../include/footer.jsp"/>
</body>
</html>