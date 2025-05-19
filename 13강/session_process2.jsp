<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Session</title>
</head>
<body>
<div class="container text-center">
<hr>
		<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");

		if (user_id.equals("admin") && user_pw.equals("admin1234")) {
			session.setAttribute("userID", user_id);
			session.setAttribute("userPW", user_pw);
			response.sendRedirect("welcome1.jsp");
		} 
		%>
			<span class="badge text-bg-danger">아이디와 비밀번호를 확인해 주세요</span>
<hr>
<a href="session2.jsp"><input type="submit" class="btn btn-outline-primary" value="처음으로 이동"></a>

</div>
</body>
</html>