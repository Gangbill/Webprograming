<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Database SQL</title>
</head>
<body>
	<div class="container">
	<form method="post" action="insert_process2.jsp">
		<div class="row mb-3">
		    <label for="staticEmail" class="col-sm-2 col-form-label">학번</label>
    		<div class="col-sm-2">
      			<input type="text" class="form-control" id="num" name="num">
    		</div>
  		</div>
		<div class="row mb-3">
		    <label for="staticEmail" class="col-sm-2 col-form-label">학과</label>
    		<div class="col-sm-2">
      			<input type="text" class="form-control" id="depart" name="depart">
    		</div>
  		</div>
  		<div class="row mb-3">
		    <label for="staticEmail" class="col-sm-2 col-form-label">이름</label>
    		<div class="col-sm-2">
      			<input type="text" class="form-control" id="name" name="name">
    		</div>
  		</div>
  		<div class="row mb-3">
		    <label for="staticEmail" class="col-sm-2 col-form-label">주소</label>
    		<div class="col-sm-2">
      			<input type="text" class="form-control" id="address" name="address">
    		</div>
  		</div>
  		<div class="row mb-3">
		    <label for="staticEmail" class="col-sm-2 col-form-label">이메일</label>
    		<div class="col-sm-2">
      			<input type="text" class="form-control" id="email" name="email">
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