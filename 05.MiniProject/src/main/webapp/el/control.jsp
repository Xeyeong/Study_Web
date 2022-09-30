<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<h3>조건문</h3>
<c:set var="score" value="85"/>
<div>choose문 : else if의 형태, else 형태가 있다</div>
<c:choose>
	<c:when test="${score ge 90}">
		<c:set var='grade' value='A학점'/>
	</c:when>
	<c:when test="${score ge 80}">
		<c:set var='grade' value='B학점'/>
	</c:when>
	<c:when test="${score ge 70}">
		<c:set var='grade' value='C학점'/>
	</c:when>
	<c:when test="${score ge 60}">
		<c:set var='grade' value='D학점'/>
	</c:when>
	<c:otherwise>
		<c:set var='grade' value='F학점'/>
	</c:otherwise>
</c:choose>
<table class='styled-table'>
<tr><th>성적</th><th>학점</th></tr>
<tr><td>${score}</td><td>${grade}</td></tr>
</table>

<%
/*  
자바에서의 switch ~ case는 범위지정 불가
int score = 65; 
String grade = "";
switch( score/10 ){
case 9: case 10:
	grade = "A학점";	break;
case 8: 
	grade = "B학점";	break;
case 7: 
	grade = "C학점";	break;
case 6: 
	grade = "D학점";	break;
default:
	grade = "F학점";
}
out.print("성적: "+ score );
out.print("학점: "+ grade );
*/
%>

<hr>
<div>if문 : else if의 형태, else 형태가 없다</div>
<c:set var="score" value="55"/>
<!--  
<c:if test="${score ge 90 }">
	<c:set var="grade" value="A학점"/>
</c:if>
<c:if test="${score ge 80 and score lt 90 }">
	<c:set var="grade" value="B학점"/>
</c:if>
-->
<c:if test="${score lt 60 }">
	<c:set var="grade" value="F학점"/>
</c:if>
<c:if test="${score ge 60 }">
	<c:set var="grade" value="D학점"/>
</c:if>
<c:if test="${score ge 70 }">
	<c:set var="grade" value="C학점"/>
</c:if>
<c:if test="${score ge 80 }">
	<c:set var="grade" value="B학점"/>
</c:if>
<c:if test="${score ge 90 }">
	<c:set var="grade" value="A학점"/>
</c:if>

<%
/*  
int score = 85; 
String grade = "";
if( score >= 90 ){
	grade = "A학점"	;
}
if( score >= 80 ){
	grade = "B학점"	;
}
if( score >= 70  && score < 80){ //85 >= 70 : T
	grade = "C학점"	;
}
out.print("학점: "+ grade );
*/
%>

<table class='styled-table'>
<tr><th>성적</th><th>학점</th></tr>
<tr><td>${score}</td><td>${grade}</td></tr>
</table>


<jsp:include page="/include/footer.jsp"/>
</body>
</html>