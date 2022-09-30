<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c'%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<h3>사원목록</h3>
	<form method='post' action='list.hr'>
		<div class='list-top'>
			<ul>
				<li><a href="new.hr" class="btn-fill">사원등록</a></li>
				<li><span>부서명</span> <select name='department_id'
					class='w-px200' onchange="$('form').submit()">
						<option value="-1">전체</option>
						<c:forEach items='${departments}' var='d'>
							<option value='${d.department_id}'
								${d.department_id eq department_id ? 'selected' : ''}>${d.department_name}</option>
						</c:forEach>
				</select></li>
			</ul>
		</div>
	</form>

	<div class='tb-wrap' style='width: 80%'>
		<table class='styled-table'>
			<colgroup>
				<col width='80px'>
				<col width='160px'>
				<col width='250px'>
				<col width='300px'>
				<col width='120px'>
			</colgroup>
			<tr>
				<th>사번</th>
				<th>사원명</th>
				<th>부서명</th>
				<th>업무</th>
				<th>급여</th>
			</tr>
			<c:forEach items='${list}' var='dto'>
				<tr ondblclick="location='detail.hr?id=${dto.employee_id}'">
					<td>${dto.employee_id}</td>
					<td>${dto.last_name}${dto.first_name}</td>
					<td>${dto.department_name}</td>
					<td>${dto.job_title}</td>
					<td>${dto.salary}</td>
				</tr>
			</c:forEach>
		</table>
	</div>


	<jsp:include page="/include/footer.jsp" />
</body>
</html>