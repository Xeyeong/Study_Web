<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1> IF문 사용해보기</h1>
	<!-- 조건을 통해 true가 되었을경우 if문의 블럭킹을 실행 
		if(boolean){ || 또는 && 연산자로 조건문의 연결또한 가능
			true 일때 여기가 실행
		}
	-->
	<%!	int iVar = 0; %>
	<% iVar ++; %>
	<% if(iVar % 2 == 0) { %>
	<p>짝수 입니다. </p>
	<%= iVar %>
	<%} else{ %>
	<p>홀수 입니다.</p>
	<%= iVar %>
	<%} %>			
	<!-- 짝수입니다. 현재 iVar이 어떤숫자인지 출력해보기 (p태그안에서)
		 홀수입니다. 현재 iVar이 어떤숫자인지를 출력해보기 (p태그안에서)
	 -->
	
		
</body>
</html>












