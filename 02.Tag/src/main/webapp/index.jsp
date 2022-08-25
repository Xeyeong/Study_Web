<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1> JSP </h1>
	<h1> 스크립트태그 ( script Tag ) </h1>
		<ul>
			<li><a href="01.script/Ex00Into.jsp">태그 처음 사용</a></li>
			<li><a href="01.script/Ex01Var.jsp">변수 더 사용해보기</a></li>
			<li><a href="01.script/Ex02Var.jsp">변수와 HTML 태그 혼용</a></li>
			<li><a href="01.script/Ex03If.jsp">제어문(if)</a></li>
			<li><a href="01.script/Ex04for.jsp">반복문(for)</a></li>
			<li><a href="01.script/Ex05for.jsp">제어문(if/for) 문제</a></li>
			<!-- for문과 if문을 중첩해서 1~100까지의 수중, 짝수의 합 홀수의 합을 출력
				홀수는 파랑색, 짝수는 빨간색으로 출력되게 만들기
				<p>1 홀수 </p> <-백그라운드나 글자색이 파랑
				<p>1 짝수 </p> <-백그라운드나 글자색이 빨강
				<p>100 </p> <-백그라운드나 글자색이 파랑 
			 
			 	<p>1부터 ~ 100까지의 수중 홀수의 합 : ? </p> 파랑
			 	<p>1부터 ~ 100까지의 수중 짝수의 합 : ? </p> 빨강
			 -->
			<li><a href="01.script/Ex06for.jsp">제어문(if/for) 문제2</a></li>
			<li><a href="01.script/Ex07Method.jsp">메소드 사용</a></li>
		</ul>
		<h1> 디렉티브 태그 ( Directive Tag ) </h1>
		<ul>
			<li><a href="02.Driective/Ex01_Drieive.jsp"> Import 구문 </a></li>
			<li><a href="02.Driective/Ex02_ErrorMain.jsp"> 에러페이지 처리 </a></li>
			<li><a href="02.Driective/Ex03_Main.jsp"> Main </a></li>
		</ul>
		<h1>액션 태그 (Action Tag)</h1>
		<ul>
			<li><a href="03.Action/Ex01_Forward.jsp"> 액션태그 포워드(forward)</a></li>
			<li><a href="03.Action/Ex02_Include.jsp"> Include </a></li>
			<li><a href="03.Action/Ex03_Bean.jsp"> Bean 객체 </a></li>
			<!-- Ex02_Include페이지가 나올수 있게 폴더에 작업을 하고,
				헤더, 푸터, jsp 를 자유롭게 만들기. -->
		</ul>
</body>
</html>








