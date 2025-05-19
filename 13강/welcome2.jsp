<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Enumeration"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Session</title>
</head>
<body>
<div class="container ">
<hr>
	<%
		String name;
		String value;

		Enumeration en = session.getAttributeNames();
		int i = 0;

		while (en.hasMoreElements()) {
			i++;
			name = en.nextElement().toString();
			value = session.getAttribute(name).toString();
			out.println("설정된 세션의 속성 이름 [ " + i + " ] : " +"<span class=\"badge text-bg-primary\">"+ name + "</span>" + "<br>");
			out.println("설정된 세션의 속성 값 [ " + i + " ] : " + "<span class=\"badge text-bg-success\">"+value + "</span>" + "<br>");
		}
	%>
	<br>
	<h3><span class="badge text-bg-success"><%=session.getAttribute("userID") %></span>님 반갑습니다.</h3>
	<hr>
	<a href="session_out2.jsp"><input type="submit" class="btn btn-outline-primary" value="로그아웃"></a>
</div>
</body>
</html>