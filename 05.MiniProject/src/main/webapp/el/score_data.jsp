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
<h3>scope 데이터</h3>
page < request < session 
<!-- page < request < session <app -->
<div>request 데이터 : ${data}</div>
<div>request 데이터 : ${requestScope.data}</div>
<div>session 데이터 : ${sessionScope.data}</div>
<a href="list.el">EL 문법</a>
<jsp:include page="/include/footer.jsp"/>
</body>
</html>