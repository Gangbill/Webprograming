<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isErrorPage="true"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Exception</title>
</head>
<body>
	<div class="container">
		<h4 class="text-center">오류 발생</h4>
		<table class="table table-bordered">
			<tbody>
				<tr>
					<th scope="row"><b>Error</b></th>
					<td>${pageContext.exception}</td>
				</tr>
				<tr>
					<th scope="row"><b>URI</b></th>
					<td>${pageContext.errorData.requestURI}</td>
				</tr>
				<tr>
					<th scope="row"><b>Status code</b></th>
					<td>${pageContext.errorData.statusCode}</td>
				</tr>
				<tr>
					<th scope="row"><b>toString</b></th>
					<td><%=exception.toString()%></td>
				</tr>
				<tr>
					<th scope="row"><b>getMessage</b></th>
					<td><%=exception.getMessage()%></td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="container">
		<div class="text-center">
			<hr>
				<a href="welcome.jsp"><button type="button" class="btn btn-outline-primary">홈 돌아가기</button></a>
			<hr>
		</div>
	</div>
</body>
</html>