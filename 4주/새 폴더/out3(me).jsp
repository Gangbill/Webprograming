<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
	<h1>Out 내장 객체</h1>
	<p><strong>현재 페이지의 Buffer 상태</strong></p>
	<% 
	int a = out.getBufferSize();
	int b = out.getRemaining();
	
	%>
	<ul class="list-unstyled">
	<ul>
      <li>출력 Buffer의 전체 크기 : <%= a %> byte </li>
      <li>남은 Buffer의 크기 : <%= b %></li>
      <li>현재 Buffer의 사용량 : <% a-b %></li>
    </ul>
	
</body>
</html>