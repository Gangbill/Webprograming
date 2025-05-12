<%@ page contentType="text/html; charset=utf-8"%>
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
         try {
        	
        	 int c = 0;
            c = a / b;
            out.println("<hr>");
            out.println("<div class='text-center'>");
            out.println("나눗셈 결과 : " + c);
            out.println("</div>");
            out.println("<div class='text-center'>");
            out.println("<hr>");
            out.println("<a href='welcome.jsp'><button type='button' class='btn btn-outline-primary'>홈 돌아가기</button></a>");
            out.println("<hr>");
            out.println("</div>");
         }
         catch (Exception e) {
            out.println("오류 발생 : " + e.getMessage());
         }
      %>

</body>
</html>
