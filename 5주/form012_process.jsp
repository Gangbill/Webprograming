<%@ page contentType="text/html; charset=utf-8"%>
  <%@ page import="java.util.Enumeration"  %> 
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<%  
		
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String email = request.getParameter("email");
	String sex = request.getParameter("sex");
	
	
	 StringBuffer buffer = new StringBuffer();   
	 buffer.append("<table class='table'>");
	 buffer.append("<thead>");
	 buffer.append("<tr>");
	 buffer.append("<th scope='col'>제목</th>");
	 buffer.append("<th scope='col'>값</th>");
	 buffer.append("</tr>");
	 buffer.append("</thead>");
	 buffer.append("<tr>");
	 buffer.append("<th scope='row'>아이디</th>");
	 buffer.append("<td>");
	 buffer.append(name);
	 buffer.append("</td>");
	 buffer.append("</tr>");
	 buffer.append("<tr>");
	 buffer.append("<th scope='row'>주소</th>");
	 buffer.append("<td>");
	 buffer.append(address);
	 buffer.append("</td>");
	 buffer.append("</tr>");
	 buffer.append("<tr>");
	 buffer.append("<th scope='row'>이메일</th>");
	 buffer.append("<td>");
	 buffer.append(email);
	 buffer.append("</td>");
	 buffer.append("</tr>");
	 buffer.append("<tr>");
	 buffer.append("<th scope='row'>성별</th>");
	 buffer.append("<td>");
	 buffer.append(sex);
	 buffer.append("</td>");
	 buffer.append("</tr>");
     buffer.append("</tbody>");
	 buffer.append("</table>");

// 위에 애들 합치면 줄일 수 있음 
     %>     
     <%= buffer.toString() %>


             
	  
	
</body>
</html>