<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
.border{
	border : 1px solid #333;
}
.bg{
	background: blue;
}
.bgf{
	background: red;
}
</style>
<body>



	<h1>구구단가로 테스트</h1>
	<table border="1px solid black">
	<%for(int i = 2; i <= 9; i++ ){%>
		<tr>
			<%for(int j = 1; j <= 9; j++){%>
			<td><%=i + " X " + j + " = " + ( i * j )%></td>
		<%}//for j%>
		</tr>
	<%}//for i %>
	</table>
	
	
	
	<h1>구구단세로 테스트</h1>
	<table border="1px solid black">
	<%for(int i = 1; i <= 9; i++ ){%>
		<tr>
			<%for(int j = 2; j <= 9; j++){%>
			<td><%=j + " X " + i + " = " + ( j * i )%></td>
		<%}//for j%>
		</tr>
	<%}//for i %>
	</table>
	
	
	<h1>구구단가로(색) 테스트</h1>
	<table border="1px solid black">
	<%for(int i = 2; i <= 9; i++ ){%>
		<tr>
			<%for(int j = 1; j <= 9; j++){%>
				<%if(i % 2 == 0){ %>
				<td class="bg"><%=i + " X " + j + " = " + ( i * j )%></td>
				<%}else{ %>
				<td class="bgf"><%=i + " X " + j + " = " + ( i * j )%></td>
			<%} %>
		<%}//for j%>
		</tr>
	<%}//for i %>
	</table>

	<p></p>
	<p></p>
	<p></p>
	<p></p>
	<p></p>
	<p></p>
	<p></p>
	<p></p>
	<p></p>
	
	
	
	
</body>
</html>