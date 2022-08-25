<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Request 요청 해보기</h1>
	<!-- 
		특정한 Servlet파일(Mapping("/login")에 어떠한 정보를 주고 다음 주소로 이동을
		요청을 함.
		ex) 네이버에 아이디 비밀번호 넣어놓고 로그인을 누르면 .=>
		webapp(View) : 눈에 보이는 영역의 작업(html, Jsp, xmlLayout ..)
		java(Controller) : 눈에 안보이지만 View에서 들어온 요청이나 URL로 들어온 요청을
							처리하는 부분(Java, C++, C#, Python .. 등 백엔드 언어)
		reqeust(Model)   : View와 Controller 사이에서 데이터를 전송하는 목적으로 사용되는 객체
		MVC 패턴 - Web에서 가장 흔히 사용되는 패턴
	 -->
	 <!-- Java쪽에 Controller라는 패키지를 추가
	 	Ex01_Request라는 이름의 요청을 받을수있는 Servlet 파일을 추가
	 	-> 404에러가 나오면 X
	  -->
	 <h2>GET 방식 요청</h2>
	 <form action="../Ex01_Request" method="get">
		
	 	<p> 이름 : <input type="text" name="name" placeholder="이름 입력" /></p>
	 	<p> 아이디 : <input type="text" name="id" placeholder="id를 입력하세요" /></p>
	 	<p> 비밀번호 : <input type="text" name="pw" placeholder="비밀번호를 입력하세요" /></p>
	 	<input type="submit" />
	 </form>
	 
	 
	 <h2>post 방식 요청</h2>
	 <form action="../Ex01_Request" method="post">
	 	<p> 이름 : <input type="text" name="name" placeholder="이름 입력" /></p>
	 	<p> 아이디 : <input type="text" name="id" placeholder="id를 입력하세요" /></p>
	 	<p> 비밀번호 : <input type="text" name="pw" placeholder="비밀번호를 입력하세요" /></p>
	 	<input type="submit" />
	 </form>
	 
</body>
</html>






