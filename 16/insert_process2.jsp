<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Database SQL</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
<div class="container">
<%
	request.setCharacterEncoding("utf-8");

	String num = request.getParameter("num");
	String depart = request.getParameter("depart");
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String email = request.getParameter("email");
	
	Statement stmt = null;

	try {
		String sql = "INSERT INTO student3(num, depart, name, address, email) VALUES('" + num + "','" + depart + "', '" + name + "', '" + address + "', '" + email + "')";
		stmt = conn.createStatement();
		stmt.executeUpdate(sql);
		out.println("<div class='alert alert-primary'>" + "Student3 테이블  삽입이 성공했습니다." + "</div>");
	} catch (SQLException ex) {
		out.println("<div class='alert alert-danger'>" + "Student3 테이블 삽입이 실패했습니다.<br>" + "</div>");
		out.println("<div class='alert alert-danger'>" + "SQLException: " + ex.getMessage() + "</div>");
	} finally {
		if (stmt != null)
			stmt.close();
		if (conn != null)
			conn.close();
	}
%>
	<hr>
	<div class="text-center">
      	<a href="welcome.jsp"><input type="button" class="btn btn-outline-primary" value="홈 돌아가기"></a>
    </div> 
    <hr>
</div>
</body>
</html>
