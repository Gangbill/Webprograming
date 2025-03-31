<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%         
	String linktype =request.getParameter("check");
	if(linktype.equals("2")){
		response.sendRedirect("http://www.naver.com");
	}
	else{
		response.sendRedirect("http://www.google.com");
	}
    %>
</body>
</html>