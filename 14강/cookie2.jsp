<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Cookie</title>
</head>
<body>
	<div class="container">
	<form name="form" action="cookie_process2.jsp" method="POST">
		<div class="row mb-3">
		    <label for="staticEmail" class="col-sm-2 col-form-label">아이디</label>
    		<div class="col-sm-2">
      			<input type="text" class="form-control" id="id" name="id">
    		</div>
  		</div>
		<div class="row mb-3">
		    <label for="staticEmail" class="col-sm-2 col-form-label">비밀번호</label>
    		<div class="col-sm-2">
      			<input type="password" class="form-control" id="pw" name="passwd">
    		</div>
  		</div>
  		<div class="row mb-3">
    	 	<div class="col-sm-12">
      			<input type="submit" class="btn btn-primary" value="전송">
    		</div>    	
  	  	</div> 			
	</form>
	</div>
</body>
</html>