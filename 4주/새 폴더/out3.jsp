<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<meta charset="UTF-8">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Out 내장 객체</h1>
	<p><strong>현재 페이지의 Buffer 상태</strong>
	<ul class="list-unstyled">
		<ul>
			<li>출력 Buffer의 전체 크기 : <%out.println(out.getBufferSize() + "byte");%>
			<li>남은 Buffer의 크기 : <%out.println(out.getRemaining() + "byte"); %>
			<li>현재 Buffer의 사용량 : <%out.println((out.getBufferSize() - out.getRemaining()) + "byte"); %>
		</ul>
	</ul>
	
	<div class="text-center">
		<hr>
			<a href="welcome.jsp"><button type="button" class="btn btn-outline-primary">홈 돌아가기</button></a>
		<hr>
	</div>
</body>
</html>