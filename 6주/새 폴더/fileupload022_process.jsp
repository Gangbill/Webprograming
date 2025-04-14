<%@page contentType="text/html; charset=utf-8"%>
<%@page import="org.apache.commons.fileupload.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>File Upload</title>
</head>
<body>
<div class="container">
<table class="table table-bordered">
	<thead>
    	<tr>
			<th scope="col">파라미터 이름</th>
			<th scope="col">파라미터 값</th>
		</tr>
	</thead>
	<tbody>
	<%
	boolean isMutipart = FileUpload.isMultipartContent(request);

	String path = "C:\\upload";

	DiskFileUpload upload = new DiskFileUpload();

	upload.setSizeMax(1000000);
	upload.setSizeThreshold(4096);
	upload.setRepositoryPath(path);
	
	List items = upload.parseRequest(request);
	Iterator params = items.iterator();

	while (params.hasNext()) {

		FileItem item = (FileItem) params.next();

		if (item.isFormField()) {
			String name = item.getFieldName();
			String value = item.getString("utf-8");
			out.println("<tr><td>"+ name + "</td>");
			out.println("<td>" + value + "</td></tr>");
		}else{
			String fileFieldName  = item.getFieldName();				
			String fileName = item.getName();
			String contentType = item.getContentType();
			
			fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
			long fileSize = item.getSize();

			File file = new File(path + "/" + fileName);
			item.write(file);
			
			out.println("<tr><td>요청 파라미터 이름</td>");
			out.println("<td>" + fileFieldName + "</td></tr>");
			out.println("<tr><td>저장 파일 이름</td>");
			out.println("<td>" + fileName + "</td></tr>");
			out.println("<tr><td>파일 콘텐츠 유형</td>");
			out.println("<td>" + contentType + "</td></tr>");
			out.println("<tr><td>파일 크기</td>");
			out.println("<td>" + fileSize + "</td></tr>");
		}
	}
	%>
	</tbody>
</table>
</div>
<div class="text-center">
	<hr>
		<a href="welcome.jsp"><button type="button" class="btn btn-outline-primary">홈 돌아가기</button></a>
	<hr>
</div>
</body>
</html>