<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Exception</title>
</head>
<body>
	<div class="container">
	<hr>
	<%
         try {
        	 String num1 = request.getParameter("num1");
     		String num2 = request.getParameter("num2");
     		int a = Integer.parseInt(num1);
     		int b = Integer.parseInt(num2);
        	 int c = a / b;
        	 %>
            <p class="text-center">나눗셈 결과 : <%= c %></p>
         <%}
         catch (Exception e) {%>
            <p class="text-center">오류 발생 : <%= e.getMessage() %></p>
         <%}
      %>
      <div class="text-center">
			<hr>
				<a href="welcome.jsp"><button type="button" class="btn btn-outline-primary">홈 돌아가기</button></a>
			<hr>
	</div>
</div>
</body>
</html>
