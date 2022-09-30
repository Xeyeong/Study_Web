<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/include/header.jsp" />
	<h3>사원정보수정</h3>
	
	<form method="post" action="update.hr">
	<input type="hidden" name="employee_id" value="${dto.employee_id}" />
	<table class="styled-table">
		<tr>
			<th class="w-px140">사번</th>
			<td>${dto.employee_id}</td>
		</tr>
		<tr>
			<th>성명</th>
			<td><input type="text" name="last_name" value="${dto.last_name}"/>
				<input type="text" name="first_name" value="${dto.first_name}"/>
			</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><input type="text" name="email" value="${dto.email}"/></td>
		</tr>		
		<tr>
			<th>전화번호</th>
			<td><input type="text" name="phone_number" value="${dto.phone_number}"/></td>
		</tr>
		<tr>
			<th>입사일자</th>
			<td><input type="date" name="hire_date" value="${dto.hire_date}" /></td>
		</tr>
		<tr>
			<th>급여</th>
			<td><input type="text" name="salary" value="${dto.salary}"/></td>
		</tr>
		<tr>
			<th>부서</th>
			<td>
				<select name="department_id" class="w-px250">
					<option value="-1">부서선택</option>
				<c:forEach items="${departments}" var="d">
					<option value="${d.department_id}"${d.department_id eq dto.department_id ? 'selected' : ''}>${d.department_name}</option>
				</c:forEach>				
				</select>
			</td>
		</tr>
		<tr>
			<th>업무</th>
			<td>
			<select name="job_id" class="w-px250">
				<option value="-1">업무선택</option>
				<c:forEach items="${jobs}" var="j">
					<option value="${j.job_id}"${j.job_id eq dto.job_id ? 'selected' : ''}>${j.job_title}</option>
				</c:forEach>
			</select>
			</td>
		</tr>
	</table>
		<div class="btnSet">
			<a class="btn-fill" onclick="$('form').submit()">저장</a>
			<a href="detail.hr?id=${dto.employee_id}" class="btn-empty">취소</a>
		</div>
	</form>
<jsp:include page="/include/footer.jsp" />
</body>
</html>