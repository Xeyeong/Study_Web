<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
.font-size{
	font-size: 30px;
}
.gr{
	color : green;
}
.red{
	color : red;
}
.or{
	color : orange;
}
</style>
</head>
<body>
	<h1>메소드 사용</h1>
	<!-- JAVA에서 메소드 만들때 . => 클래스 안에 만들었음. -->
	<!-- JSP컨테이너(톰캣) : 바로 메소드를 자바코드 영역으로 만들고 사용할수있음-->
	<!-- void <= 반환값이 없음 (공허) -->
	<%! int getSum(int x , int y){
		int sum = x + y ; //? 결과를 html 바디부분에 보이게 하려면 어떻게 해야할까?
						  // 표현문 태그 사용해야함 ↑
		
		return sum;
		/* x와 y를 입력받아 두수의 차를 구하는 메소드 , 나누기 , 나머지 , 곱하기
		를 구하는 메소드들을 각각 만드시고 , 호출 하세요(HTML 표현문 태그 이용)*/
	
	}
	 %>
	 
	 
	 <h2 class="font-size green">getSum : <%=getSum(10, 20) %></h2><br>
	 <br>
	 
	 <!-- 나누기 메소드 -->
	 <%! double getDiv(double x ,double y){
		 double div = x / y;
		 
		 return div;
	 }
	 %>
	 <h2 class="font-size or">getDiv : <%=getDiv(10, 20) %></h2><br>
	 <br>
	 
	 <!-- 나머지 메소드 -->
	<%! int getShare(int x , int y){
		int share = x % y ; //? 결과를 html 바디부분에 보이게 하려면 어떻게 해야할까?
						  // 표현문 태그 사용해야함 ↑
		
		return share;
	}
	 %>
	 <h2 class="font-size red">getShare : <%=getShare(10, 20) %></h2><br>
	 <br>
	 
	 <!-- 곱하기 메소드 -->
	<%! int getMul(int x , int y){
		int mul = x * y ; //? 결과를 html 바디부분에 보이게 하려면 어떻게 해야할까?
						  // 표현문 태그 사용해야함 ↑
		
		return mul;
	}
	 %>
	 
	 <h2 class="font-size gr">getMul : <%=getMul(10, 20) %></h2>
	 
	 
	<!-- getName이라는 메소드를 만들고 
			해당하는 메소드는 나의이니셜을 리턴하는 메소드임 
			해당하는 메소드로 HTML바디부분에 나의 이니셜을 출력해보기.
		 -->
	
	<% void getName(String){
		String str = new String();
		str = "JSY";
		return str;
	}
	%>
	
	 <h2 class="font-size gr">name : <%= %></h2>
	 
	 
</body>
</html>













