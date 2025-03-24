<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="d-grid gap-2">
  <button class="btn btn-primary" type="button">구구단 출력하기</button>
  </div>
		
	<jsp:include page="include_date2.jsp" flush="true" >	
		<jsp:param name="num" value="2" />
	</jsp:include>	
</body>
</html>
