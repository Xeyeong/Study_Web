<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<h3>고객목록</h3>
	<div class="list-top ">
		<a href="new.cu" class="btn-fill">신규고객</a>
	</div>
	<table class='styled-table'>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>전화번호</th>
		</tr>
		<c:forEach items="${list}" var="vo">
			<tr onclick="location='detail.cu?id=${vo.id}'">
				<td>${vo.id }</td>
				<td>${vo.name }</td>
				<td>${vo.phone }</td>
			</tr>
		</c:forEach>
	</table>
	<jsp:include page="/include/footer.jsp" />
</body>
</html>