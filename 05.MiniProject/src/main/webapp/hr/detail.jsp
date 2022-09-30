<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="/include/header.jsp"/>

<h3>사원정보</h3>
<table class="styled-table">
	<tr>
		<th class="w-px100">사번</th>
		<td>${dto.employee_id}</td>
	</tr>
	<tr>
		<th>성명</th>
		<td>${dto.last_name}${dto.first_name}</td>
	</tr>
	<tr>
		<th>이메일</th>
		<td>${dto.email}</td>
	</tr>
	<tr>
		<th>전화번호</th>
		<td>${dto.phone_number}</td>
	</tr>
	<tr>
		<th>입사일자</th>
		<td>${dto.hire_date}</td>
	</tr>
	<tr>
		<th>급여</th>
		<td><fmt:formatNumber value="${dto.salary}"/></td>
	</tr>
	<tr>
		<th>부서명</th>
		<td>${dto.department_name}</td>
	</tr>
	<tr>
		<th>업무제목</th>
		<td>${dto.job_id}</td>
	</tr>
</table>
<div class="btsSet">
	<a href="list.hr" class="btn-fill">사원목록</a>
	<a href="modify.hr?id=${dto.employee_id}" class="btn-fill">정보수정</a>
	<a class="btn-fill" id="delete">정보삭제</a>
	<!-- <a href="delete.hr" class="btn-fill" 
	onclick="if(confirm('사번[${dto.employee_id}]정말 삭제?')){location='dto.employee_id'}">정보삭제</a> -->
</div>
<jsp:include page="/include/footer.jsp"/>
<script>
$('#delete').click(function() {
	if(confirm('사번[${dto.employee_id}] 정말삭제? '))
		location = 'delete.hr?id=${dto.employee_id}';
});
</script>
</body>
</html>




