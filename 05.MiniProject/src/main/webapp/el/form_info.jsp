<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%request.setCharacterEncoding("utf-8"); %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<h3>form태그의 입력정보</h3>
<table class='styled-table'>
	<tr><th class='w-px140'>이름</th>
		<td>${param.name }</td>
	</tr>
	<tr><th>성별</th>
		<td>${param.gender }</td>
	</tr>
	<tr><th>취미</th>
		<td>
			<c:forEach items='${paramValues.hobby}' var='hobby'>
			${hobby}
			</c:forEach>
		</td>
	</tr>
</table>

<div><a href='list.el'>EL 문법</a></div> 
<div><a href='form.el'>입력데이터</a></div> 
<jsp:include page="/include/footer.jsp" />

</body>
</html>