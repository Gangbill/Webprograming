<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<title>Action tag</title>
</head>
<body>
<jsp:useBean id="circle" class="ch04.com.dao.Circle" scope="request" />
	<h1><span class="badge text-bg-secondary">원 면적 계산</span></h1>
	<h5>원의 반지름 : 
	<span class="badge text-bg-secondary"><%
		double radius = 2.5;
		out.println(circle.getRadius(radius));
	
	%></span>
	<br>
	원의 둘레 : 
	<span class="badge text-bg-secondary"><%
		out.println(String.format("%.5f",circle.getPerimeter()));
	
	%></span>
	<br>
	원의 면적 : 
	<span class="badge text-bg-secondary"><%
		out.println(String.format("%.5f",circle.getArea()));
	
	%></span>	
	<br>
	</h5>
	<br>
	<div class="container text-center">
	<button type="button" class="btn btn-outline-primary">홈 돌아가기</button></div>
	
</body>
</html>