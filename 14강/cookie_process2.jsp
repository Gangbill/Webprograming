<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Cookie</title>
</head>
<body>
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");

		if (user_id.equals("admin") && user_pw.equals("admin1234")) {
			Cookie cookie_id = new Cookie("userID", user_id);
			Cookie cookie_pw = new Cookie("userPW", user_pw);
			cookie_id.setMaxAge(60*60);
			response.addCookie(cookie_id);	
			response.addCookie(cookie_pw);%>
			<div class="container text-center">
			<hr>
		<%
            java.util.Calendar calendar = java.util.Calendar.getInstance();
            int year = calendar.get(java.util.Calendar.YEAR);
            int month = calendar.get(java.util.Calendar.MONTH) + 1;
            int day = calendar.get(java.util.Calendar.DAY_OF_MONTH);
            int hour = calendar.get(java.util.Calendar.HOUR);
            int min = calendar.get(java.util.Calendar.MINUTE);
            int sec = calendar.get(java.util.Calendar.SECOND);
        %>
        <span>오늘은 <%= year %>-<%= month %>-<%= day %>일 입니다.</span><br>
        <span>현재시각은 <%= hour %>:<%= min %> 분 입니다.</span>
		<br>
		<% out.println("<span class='badge bg-success'>" + user_id + "</span>" + " 님 쿠키 설정이 성공했습니다."); %>
		<hr>
			<a href="welcome2.jsp"><button type="button" class="btn btn-outline-primary">다음 페이지로 이동</button></a>
		<hr>
		</div>
		<%} else { %>
		<div class="container text-center">
		<hr>
			<% out.println("<span class='badge bg-danger'>" + "아이디와 비밀번호를 확인해 주세요" + "</span>"); %>
		<hr>
			<a href="cookie2.jsp"><button type="button" class="btn btn-outline-primary">처음으로 이동</button></a>
		<hr>
		</div>
		<%} %>	
</body>
</html>