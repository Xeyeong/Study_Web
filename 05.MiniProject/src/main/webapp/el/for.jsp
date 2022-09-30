<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<h3>반복문</h3>
<%
String str[] = {"가", "나", "다", "라"};
%>
<c:set var='data' value='<%=str%>'/>

<c:forEach items="${data}" var="d" varStatus="status">
${status.index eq 0 ? "" : ","}${d}&nbsp;&nbsp;&nbsp;
[${status.first ? "" : ","}${d}&nbsp;&nbsp;&nbsp;] <br>

</c:forEach>
<hr>

<c:forEach items="<%=str%>" var="s">
${s}
</c:forEach>
<hr>
<%
for(String s : str ){
	out.println("<div>"+ s +"</div>");
}
%>
<hr>

<div>1~5 출력</div>
<c:forEach var='i' begin='1' end='5' step='1'>
<div>${i}</div>
</c:forEach>
<hr>
<%
for(int i=1; i<=5; i++){
	out.println("<div>"+i+"</div>");
}
%>

<jsp:include page="/include/footer.jsp"/>

</body>
</html>