<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.util.StringTokenizer" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/include/header.jsp" >
	<jsp:param value="hong" name="id"/>
	<jsp:param value="홍길동" name="name"/>
</jsp:include>
<h3>토큰분리</h3>
<%
String subjects = "view,oracle,java,servlet/spring";
// String subject[] = subjects.split(",");
// for(String s : subject ){
// 	out.print("<div>" + s + "</div>");
// 	String data[] = s.split("/");
// 	for(String d : data){
// 		out.print("<div>" + d + "</div>");		
// 	}
// }
// out.print("<hr>");

StringTokenizer token = new StringTokenizer(subjects, ",/");
while(token.hasMoreTokens()){
	out.print( "<div>" + token.nextToken() + "</div>" );
}
%>
<hr>
<c:forTokens items="<%=subjects%>"  var='subject' delims="/,">
<div>${subject}</div>
</c:forTokens>



<%@ include file="/include/footer.jsp" %>
</body>
</html>