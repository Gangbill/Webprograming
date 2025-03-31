<%@ page contentType="text/html; charset=utf-8" %>
<%@page import="java.util.Enumeration"%>
<%@ page import="java.net.URLDecoder"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>	
	<%		
		request.setCharacterEncoding("utf-8");
		String userid = request.getParameter("id");
		String password = request.getParameter("passwd");
		String name = request.getParameter("name");
		String code = request.getParameter("code");
	%>
	<p>아이디 : <%=userid%>
	<p>비밀번호 : <%=password%>
	<p>이름 : <%=name%>
	<p>학번 : <%=code%>
	<p>--------------------------------------------------------<br>
	
	<%
		Enumeration<?> p = request.getParameterNames();
		
		while (p.hasMoreElements()) {
			String pname = (String)p.nextElement();
			String values = request.getParameter(pname);
	%>
	<%=pname%> = <%=values%>
	<%
		if (p.hasMoreElements() == true)
			out.print(",");
		else
			break;
	%>
	<%
		}
	%>
	
	<div class="text-center">
		<hr>
			<a href="welcome.jsp"><button type="button" class="btn btn-outline-primary">홈 돌아가기</button></a>
		<hr>
	</div>
</body>
</html>