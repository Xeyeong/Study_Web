<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 디렉티브 태그 %@ 를 이용해서 인클루드 (Ex03_Main.jsp -->
<!-- 액션태그의 include 태그가 열려있으면 어떤 인자값(파라메터)를 보내준다고 인식함
	디렉티브 태그와 액션태그의 include차이점은 어떤 파라메터를 보낼수있는지의 여부.
 -->
 
		<!-- Header.jsp를 붙일때 어떤 값을 보내줘서 사용하게 만들수있음
			JSP 버그 : 태그안에 주석이있으면 될때가있고 안될때가 있음.
						(태그 안쪽에는 가급적이면 주석을 사용X)
			오류가 없는 코드여도 빨간불이 들어올때가 있음.
			(파일을 닫았다가 다시 열어서 해결)
		 -->
		 
	<!-- Header -->
	<h1> 액션 인클루드 </h1>
	<jsp:include page="Ex02_Header.jsp">
		<jsp:param value="JSY" name="name"/><!-- String name ="JSY" -->
	</jsp:include>
	
	<!-- Footer -->
	<h1> 인클루드 페이지 컨텐츠</h1>
	<jsp:include page="Ex02_Footer.jsp"/>
	
</body>
</html>









