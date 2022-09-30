<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c'%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>

<h3>계산결과</h3>

<div>true -> false, false -> true 바꾸는 연산자: !(not) </div>
<div>${empty param.no1 ? "no1 값이 없음" : "" }</div>
<div>${ not empty param.no2 ? "no2 값이 있음" : "" }</div>
<hr>
<div>논리연산자: &&(and), ||(or) </div>
<c:if test="${empty param.no1 or empty param.no2}">
	산술연산 불가!!
</c:if>

<c:if test="${!empty param.no1 and not empty param.no2}">

<div>산술연산자: + - * /(div) %(mod)</div>
<div>${param.no1} + ${param.no2} = ${ param.no1 + param.no2 }</div>
<div>${param.no1} - ${param.no2} = ${ param.no1 - param.no2 }</div>
<div>${param.no1} * ${param.no2} = ${ param.no1 * param.no2 }</div>
<div>${param.no1} / ${param.no2} = ${ param.no1 / param.no2 }</div>
<div>${param.no1} / ${param.no2} = ${ param.no1 div param.no2 }</div>
<div>${param.no1} % ${param.no2} = ${ param.no1 % param.no2 }</div>
<div>${param.no1} % ${param.no2} = ${ param.no1 mod param.no2 }</div>
<hr>

<div>비교연산자: >(gt) <(lt) ==(eq) !=(ne) >=(ge) <=(le) </div>
<div>${param.no1} 와 ${param.no2} 중 더 큰 수: ${param.no1 > param.no2 ? param.no1 : param.no2}
	<br>${param.no1 - param.no2 > 0 ? param.no1 : param.no2} 이 큰수
	<br>${param.no1 gt (param.no2-0)  ? param.no1 : param.no2} 이 큰수
	<br>${param.no1 ge (param.no2-0)  ? param.no1 : param.no2} 이 큰수
	<br>${param.no1 lt (param.no2-0)  ? param.no2 : param.no1} 이 큰수
	<br>${param.no1 le (param.no2-0)  ? param.no2 : param.no1} 이 큰수
	<br>${param.no1 eq param.no2  ? "같음" : "다름"}
	<br>${param.no1 ne param.no2  ? "같지않음" : "같음"}
</div>

</c:if>

<div><a href='operator.jsp'>연산자</a></div>
<div><a href='<c:url value="/list.el"/>'>EL문법</a></div>
<jsp:include page="/include/footer.jsp"/>

</body>
</html>