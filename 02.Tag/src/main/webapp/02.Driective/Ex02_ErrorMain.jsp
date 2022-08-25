<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page errorPage="Ex02_Error.jsp" %> <!-- 에러가 발생했을때 다른페이지에서 처리를 하고 보여줄것인지를 저장해둠. -->
	<h1>에러 페이지 메인</h1>
	<!-- 자바코드를 이용해서 오류를 만들기 => Ex02_Error.jsp가 보일수있게 처리 -->
	
	<%
		//NumberFormatException
		//ArrayOutBountException
		//ClassNotFoundException
		int num = Integer.parseInt("AAA"); // 숫자로 바꿀수없는값을 래퍼클래스에서 이용을 하면 오류남.
		int[] arr = {1};// 크기 : 1 , index(주소) : 크기 -1 == 0
		int numArr;
		numArr = 10/0; // 연산오류
	
	
	
	%>
</body>
</html>





