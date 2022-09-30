<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=CHROME">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>실습용 테마</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<script src="https://kit.fontawesome.com/c47106c6a7.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="<c:url value="/"/>css/style.css?<%=new java.util.Date()%>">
<link rel="stylesheet" href="<c:url value="/"/>css/common.css?<%=new java.util.Date()%>">
<script src="js/ie.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src ="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/js/all.min.js"></script>
</head>
<body>
	<header>
		<div class="inner">
			<h1>
				<a href="<c:url value='/'/>">HANUL302 ${param.id}${param.name}</a>
			</h1>
			<ul id="gnb">
				<li><a href="<c:url value='/'/>list.el">EL문법</a></li>
				<li><a href="<c:url value='/list.te'/>">JSTL(TEST_DB)</a></li>
				<li><a href="<c:url value='/'/>list.cu">고객관리</a></li>
				<li><a href="<c:url value='/list.hr'/>">사원목록</a></li>
				<li><a href="#">공지사항</a></li>
				<li><a href="#">게시판</a></li>
			</ul>
			<ul class="util">
				<!-- 로그인한 경우 -->
				<li>홍길동</li>
				<li><a class="btn-fill">logout</a></li>
				<!-- 로그인하지 않은 경우 -->
				<li><a href="#" class="btn-fill">로그인</a></li>
				<li><a href="member.mb" class="btn-fill">회원가입</a></li>
			</ul>

		</div>

	</header>
</body>
</html>