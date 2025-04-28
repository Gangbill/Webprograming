<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Validation</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
<table class="table table-bordered">

	<p>	아이디 : <%=request.getParameter("id")%>
	<p>	비밀번호 :	<%=request.getParameter("passwd")%>
	<p>	제목 :	<%=request.getParameter("title")%>
	
</table>
</body>
</html>