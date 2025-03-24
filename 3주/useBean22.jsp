<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="add" class="ch04.com.dao.ch04.Add" scope="request" />
	<h4>덧셈 출력하기</h4>
	<div class="p-3 mb-2 bg-info text-dark">
   		<%
			int num = 5;
	
			for (int i = 1; i <= 9; i++) 
					out.print(num +" + "+ i+ " = " + add.process(num, i) + "<br>");
		%>
	</div>
	<div class="text-center">
		<hr>
			<a href="welcome.jsp"><button type="button" class="btn btn-outline-primary">홈 돌아가기</button></a>
		<hr>
	</div>
</body>
</html>