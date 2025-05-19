<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Session</title>
</head>
<body>
	<%  
    if (session.getAttribute("userID") == null) {
        response.sendRedirect("session_out.jsp");
    }
	
	long time = session.getCreationTime();
	
	Date creationData = new Date(time);
	
	SimpleDateFormat dataFormat = new SimpleDateFormat("yyyy년MM월dd일HH시mm분ss초");
	String formattedDate = dateFormat.format(creationDate);
	%>
	<div class="text-center">

			<p><=% formattedDate %></p>
		</div><br>
		<div class="text-center">
			<span class="badge text-bg-success">admin</span>
			</div>
			<p>님 세션 설정이 성공했습니다.</p>
	<div class="text-center">
			<hr>
				<a href="welcome2.jsp"><button type="button" class="btn btn-outline-primary">다음 페이지로 이동</button></a>
			<hr>
		</div>


</body>
</html>