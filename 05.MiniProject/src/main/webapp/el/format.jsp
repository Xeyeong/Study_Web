<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix='fmt'%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix='c'%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<h3>포맷실습</h3>
<h5>날짜포맷</h5>
<c:set var='today' value='<%=new java.util.Date()%>'/>
오늘: ${today}<br>
오늘: <fmt:formatDate value="${today}" type='both' dateStyle="short" timeStyle='long'/><br>
오늘: <fmt:formatDate value="${today}" type='date' dateStyle="short"/><br>
오늘: <fmt:formatDate value="${today}" pattern="yyyy년 MM월 dd일"/><br>
현재시각: <fmt:formatDate value="${today}" type='time' timeStyle='short'/><br>
현재시각: <fmt:formatDate value="${today}" 
				pattern="yyyy년 MM월 dd일 E a hh시 mm분 ss초"/><br>

<br>
<table class='styled-table'>
<tr><th class='w-px140'>속성</th><th>설명</th></tr>
<tr><td>type: both</td><td>날짜와 시각형식</td></tr>
<tr><td>type: date(기본)</td><td>날짜형식</td></tr>
<tr><td>type: time</td><td>시각형식</td></tr>
<tr><td>dateStyle</td>
	<td>날짜표현형식: full(2022년 9월 22일 목요일)
					, long(2022년 9월 22일), medium(기본), short(22. 9. 22) </td></tr>
<tr><td>timeStyle</td>
	<td>시각표현형식: full(몇시 몇분 몇초 표준시Korean Standard Time)
					, long(몇시 몇분 몇초 표준시KST), medium(기본), short(오후 몇시몇분) </td></tr>
<tr><td>pattern</td><td>사용자 지정형식</td></tr>
</table>
<hr>

<h5>숫자포맷</h5>
<c:set var='no' value='12300000'/>
<div><fmt:formatNumber value='${no}' groupingUsed='true'/> </div>
<div><fmt:formatNumber value='${no}' pattern="###,###,###.00000"/> </div>
<div><fmt:formatNumber value='1' type='percent'/> </div>
<div><fmt:formatNumber value='${no}' type='currency'/> </div>
<!-- 
100% : 1
 -->

<table class='styled-table'>
<tr><th class='w-px140'>속성</th><th>설명</th></tr>
<tr><td>groupingUsed</td><td>숫자표현(천단위, 표현)</td></tr>
<tr><td>pattern</td><td>사용자 지정형식</td></tr>
<tr><td>type: percent</td><td>백분율 % 표현</td></tr>
<tr><td>type: currency</td><td>통화 기호 표현</td></tr>
</table>





<jsp:include page="/include/footer.jsp"/>
</body>
</html>