<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%! int sVal = 0; %><!--  전역변수 -->
	<% int iVal = 0; %><!--  지역변수 -->
	<%=++sVal %>
	<%=++iVal %>
	<% String[] arr1 = {"S","Y","S","Y"}; %><!--  4의 크기를 가진 배열(length) -->
		<!-- 배열의 인덱스는 0부터 length-1 : 0, 1, 2, 3 -->
		<%=arr1[0] + arr1[1] + arr1[2] + arr1[3] %> <!-- 표현문태그 syso와 비슷 -->
		
	
	<!--Q.숫자를 누적할수있는 변수를 각각 전역변수와 지역변수로 만들기.
		  이페이지에 접근할때마다 두개의 변수는 증감식을통해 증감을하고
		  결과를 BODY부분에 표현함. (두 변수의 차이를 알아보기 )
		  
		Q.String[] 배열을 만들기 4개이상의 크기 ( 배열내용은 T , E , S , T의 문자가 각각의
		인덱스에 들어있음.
		표현문을 이용하여 해당하는 글자를 모두 출력하기.
	  --> 
	  <%! int i = 0; %>
	  <%= i++ %>
	  <% int j = 0; %>
	  <%= j++ %>
	  <%String[] arr = {"T", "E", "S", "T"}; %>
	  <%= arr[0] %> <%= arr[1] %> <%= arr[2] %> <%= arr[3] %>
</body>
</html>





