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
	<table class="table table-bordered">
		<tr class="table-light">
			<th>학번</th>
			<th>학과</th>
			<th>이름</th>
			<th>주소</th>
			<th>이메일</th>
		</tr>
		<%
			ResultSet rs = null;			
			Statement stmt = null;

			try {
				String sql = "select * from student";
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);

				while (rs.next()) {
					String num = rs.getString("num");
					String depart = rs.getString("depart");
					String name = rs.getString("name");
					String address = rs.getString("address");
					String email = rs.getString("email");
		%>
		<tr>
			<td><%=num%></td>
			<td><%=depart%></td>
			<td><%=name%></td>
			<td><%=address%></td>
			<td><%=email%></td>
		</tr>
		<%
				}
			} catch (SQLException ex) {
				out.println("Student 테이블 호출이 실패했습니다.<br>");
				out.println("SQLException: " + ex.getMessage());
			} finally {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			}
		%>
	</table>
	<hr>
	<div class="text-center">
      	<a href="welcome.jsp"><input type="button" class="btn btn-outline-primary" value="홈 돌아가기"></a>
    </div> 
    <hr>
</div>
</body>
</html>
