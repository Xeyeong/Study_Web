<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.styled-table {
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.styled-table thead tr {
    background-color: #009879;
    color: #ffffff;
    text-align: left;
}

.styled-table th,
.styled-table td {
    padding: 12px 15px;
}

.styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}

.styled-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/include/header.jsp" %>
	<h1> 테스트 테이블 목록 조회 화면</h1>
<%-- 	${list} --%>
<%
/*  
int[] no = new int[5];
for(int idx=0; idx<no.length; idx++){
	no[idx] = (idx+1)*10;
}
//향상된 for문
for(int n : no){
// 	out.print(n + "&nbsp;&nbsp;&nbsp;");
	out.print("<div>"+n +"</div>");
}
*/
%>		
<!--  
	<table class='tb-list'>
		<tr><th>코드</th>
			<th>데이터1</th>
			<th>데이터2</th>
			<th>데이터3</th>
		</tr>
		
		<c:forEach items="${list}" var="dto">
			<tr>
				<td>${dto.test_cd }</td>
				<td>${dto.test_data1 }</td>
				<td>${dto.test_data2 }</td>
				<td>${dto.test_data3 }</td>
			</tr>
		</c:forEach>
	</table>
-->
	
	<div class='list-top'>
		<input type='button' value='신규' onclick='location="new.te"'>
	</div>
	<table class="styled-table">
    <thead>
        <tr>
            <th>코드</th>
            <th>데이터1</th>
            <th>데이터2</th>
            <th>데이터3</th>
        </tr>
    </thead>
    <tbody>
 	<c:forEach items="${list}" var="dto">
			<tr onclick="location='detail.te?cd=${dto.test_cd }'">
				<td>${dto.test_cd }</td>
				<td>${dto.test_data1 }</td>
				<td>${dto.test_data2 }</td>
				<td>${dto.test_data3 }</td>
			</tr>
		</c:forEach>

    </tbody>
</table>
	
<%@ include file="/include/footer.jsp" %>
</body>
</html>