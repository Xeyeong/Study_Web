<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<h3>함수 라이브러리 실습</h3>
<c:set var='subjects' value="view,oracle,java,servlet/spring"/>
[ ${subjects} ]
<table class='styled-table'>
<tr><th class='w-px140'>함수</th><th>설명</th></tr>
<tr><td>length</td>
	<td>문자열의 길이: ${fn: length(subjects) }</td>
</tr>
<tr><td>substring</td>
	<td>문자열에서 문자열의 일부를 반환(끝위치 반드시 지정)
		: ${fn: substring(subjects, 17, 24)}, 
		${fn: substring(subjects, 17, fn:length(subjects))}
	</td>
</tr>
<tr><td>indexOf</td>
	<td>문자열에서 특정 문자열의 시작위치를 반환: ${fn: indexOf(subjects, '/') }</td>
</tr>
<tr><td>toUpperCase/toLowerCase</td>
	<td>영문 문자열을 대/소문자화: ${ fn:toLowerCase(fn: toUpperCase(subjects)) }</td>
</tr>
<tr><td>split</td>
	<td>문자열에서 토큰분리한 결과:
	<c:forEach items="${fn:split(subjects, '/,')}" var="subject">
		<div>${subject}</div>
	</c:forEach> 
	<div>${fn: join(fn:split(subjects, '/,'), "?") }</div> 
	</td>
</tr>
</table>
<hr>

<%
String fruits[] = {"사과", "배", "귤", "감"};
//문자열 한 개로 만든다.
String result = String.join(", ", fruits);
out.print( "<div>"+result +"</div>");

//문자열을 구분자로 토큰 분리하기: split
String datas[] = result.split(",");
for(String d : datas ){
	out.print("<div>"+d +"</div>" );
}
%>
<c:set var='fruits' value='<%=fruits%>'/>
<div>${fn: join(fruits, ' : ') }</div>
<br>

이메일: <c:set var='email' value='honffa4@naver.com'/><br>
이메일: ${fn: substring(email, 0, fn:indexOf(email, '@') ) }


<jsp:include page="/include/footer.jsp"/>
</body>
</html>