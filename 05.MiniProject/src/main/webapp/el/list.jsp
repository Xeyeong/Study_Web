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

<h3>EL문법</h3>
<h5>포맷 라이브러리</h5>
<div><a href='el/format.jsp'>포맷실습</a></div>
<hr>

<h5>함수 라이브러리</h5>
<div><a href='el/functions.jsp'>함수실습</a></div>
<hr>

<h5>core 라이브러리</h5>
<div><a href='scope.el'>영역(scope) 데이터</a></div>
<div><a href='form.el'>파라미터 데이터</a></div>
<div><a href='el/operator.jsp'>연산자</a></div>
<div><a href='el/for.jsp'>반복문</a></div>
<div><a href='el/control.jsp'>조건문</a></div>
<div><a href='el/token.jsp'>토큰분리</a></div>

<jsp:include page="/include/footer.jsp"/>

</body>
</html>