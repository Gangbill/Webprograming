<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>

	<%
		int num = Integer.parseInt(request.getParameter("num"));
		
		for (int i = 1; i <= 9; i++) {			
			out.println(num +" * "+ i + " = " + num*i + " ");		
		out.println("<u><strong>" + (num+1) +" * "+ i + " = " + ((num+1)*i) + "<br></strong></u>");
			out.println("-----------------------<br>");
		}
	%> 
	<p>오늘의 날짜 및 시각
	<p><%=(new java.util.Date()).toLocaleString()%>
</body>
</html>