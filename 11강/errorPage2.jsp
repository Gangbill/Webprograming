<%@ page contentType="text/html; charset=utf-8"%>
<%@ page errorPage="isErrorPage2.jsp"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Exception</title>
</head>
<body>
	<%
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		int a = Integer.parseInt(num1);
		int b = Integer.parseInt(num2);
	%>
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display-5">전송 결과</h1>
		</div>
	</div>
	<div class="container py-4">
		<div class="row align-items-md-stretch">
			<form action="errorPage2.jsp" method="post">
				<div class="mb-3 row">
					<label class="col-sm-2"><b>숫자1 : <span class="badge text-bg-danger"><%= a %></span></b></label>
				</div>
				<div class="mb-3 row">
					<label class="col-sm-2"><b>숫자2 : <span class="badge text-bg-danger"><%= b %></span></b></label>
				</div>
			</form>
		</div>
		
		<div class="text-center">
			<hr>
				<a href="welcome.jsp"><button type="button" class="btn btn-outline-primary">홈 돌아가기</button></a>
			<hr>
		</div>
	</div>
</body>
</html>