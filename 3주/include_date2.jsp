<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>

</head>
<body>
	<%
		int num = Integer.parseInt(request.getParameter("num"));
		
		for (int i = 1; i <= 9; i++) 	{		
				out.println("<p class='text-center'>" + num +" * "+ i + " = " + num*i + "<br></p>");
				
				}
		out.println("-------------------------------------------------------------------------------------------------------------------------------<br>");
		for (int i = 1; i <= 9; i++) 	{		
			out.println((num+3) +" * "+ i + " = " + ((num+3)*i) + "<br>");
			
			}
			
	%>
	<div class="text-center">

    <hr>

    <button type="button" class="btn btn-outline-primary">홈 돌아가기</button>

    <hr>

    </div>
</body>
</html>