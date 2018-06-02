<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	
	// 이게 주석
	// 자바 코드를 작성 할 수 있어요!!
	System.out.println("자바 소스");
	
	// 한글을 위해서..
	request.setCharacterEncoding("UTF-8");
	
	// 넘어오는 데이터를 받아 주세요.
	// 클라이언트에서 요청 한 데이터
	String nugu = request.getParameter("nugu");  // 너는 누구
	String adi = request.getParameter("adi");  // 여긴어디
	String mukgi = request.getParameter("mukgi");  // 오늘 머먹지?
	
	// 축구 점수 받기
	String team1 = request.getParameter("team1");
	String team2 = request.getParameter("team2");
	
	// 문자를 숫자로 변경
	int jumsu1 = Integer.parseInt(request.getParameter("jumsu1"));
	int jumsu2 = Integer.parseInt(request.getParameter("jumsu2"));
	
	
	
	// 잘넘어 오는지 확인용 코드 
	System.out.println(team1);
	System.out.println(team2);
	System.out.println(jumsu1);
	System.out.println(jumsu2);
	
	// 잘넘어 오는지 확인용 코드 
// 	System.out.println(nugu);
// 	System.out.println(adi);
// 	System.out.println(mukgi);
	
	// 화면 찍어보기
// 	out.println(nugu);
// 	out.println(adi);
// 	out.println(mukgi);
%>

<!-- 여기에 주석(HTML)을 만들고 싶어요!(소스 보기에서 보임) -->
<%-- 여기에 주석(JSP)을 만들고 싶어요!(소스 보기에서 안보임) --%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>넘어 오는 데이터를 받아 주는 페이지</title>
</head>
<body>
<h1>넘어 오는 데이터를 받아 주는 페이지</h1>
너는  <%=nugu %>  이야~~<br>
거긴 <%=adi %> 야!!<br>
오늘은 <%=mukgi %> 를 먹어!!<br>

오늘의 축구 결과는?<br>

<%=jumsu1 %> 대 <%=jumsu2 %> 로<br>
<% if(jumsu1 > jumsu2) {  %>
 	<%=team1 %> 이(가) 이겼습니다.
<% } else { %>
	<%=team2 %> 이(가) 이겼습니다.
<% } %>


</body>
</html>
