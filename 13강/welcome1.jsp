<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
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
	SimpleDateFormat format = new SimpleDateFormat("yyyy년MM월dd일hh시mm분ss초");
	String a = format.format(session.getCreationTime());
	%>
	<%=a%><br>
	<span class="badge text-bg-success"><%=session.getAttribute("userID")%></span>님 세션 설정이 성공했습니다.
	<hr>
<a href="welcome2.jsp"><input type="submit" class="btn btn-outline-primary" value="다음 페이지로 이동"></a>

</div>
</body>
</html>