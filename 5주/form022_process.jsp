<%@ page contentType="text/html; charset=utf-8"%>
  <%@ page import="java.util.Enumeration"  %> 
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">제목</th>
				<th scope="col">값</th>
			</tr>
		</thead>
		<tbody>
			<%  
				request.setCharacterEncoding("UTF-8");
	
				Enumeration<?> p = request.getParameterNames(); 
    			while(p.hasMoreElements()){         
					String paramName = (String)p.nextElement();        
       				String paramValue = request.getParameter(paramName);
     		%>
			<tr>
				<th scope="row"><% out.print(paramName); %></th><td><% out.print(paramValue); %></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
	
	<div class="text-center">
		<hr>
			<a href="welcome.jsp"><button type="button" class="btn btn-outline-primary">홈 돌아가기</button></a>
		<hr>
	</div>
</body>
</html>