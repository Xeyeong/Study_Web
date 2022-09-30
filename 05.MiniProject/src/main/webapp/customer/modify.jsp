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

<h3>고객정보수정</h3>
<form action="update.cu" method="post">
<input type="hidden" name="id" value="${vo.id}" />
<table class="styled-table">
<colgroup>
	<col width="140px"/>
	<col />
</colgroup>

<tr>
	<th>아이디</th>
	<td>${vo.id}</td>
</tr>
<tr>
	<th>고객명</th>
	<td><input type="text" name="name" value="${vo.name}"/></td>
</tr>
<tr>
	<th>성별</th>
	<td><lable>남<input type="radio" name="gender" value="남"${vo.gender eq '남' ? 'checked' : ''}/></lable>
		<lable>여<input type="radio" name="gender" value="여"${vo.gender eq '여' ? 'checked' : ''}/></lable></td>
</tr>
<tr>
	<th>전화번호</th>
	<td><input type="text" name="phone" value="${vo.phone}"/></td>
</tr>
<tr>
	<th>주소</th>
	<td><input type="text" name="addr" value="${vo.addr}"/></td>
</tr>

</table>
</form>

<div class="btnSet">
	<a class="btn-fill" href="javascript:$('form').submit()">저장</a>
	<a class="btn-empty" href="detail.cu?id=${param.id }">취소</a>
	
	
</div>
<jsp:include page="/include/footer.jsp"/>
</body>
</html>