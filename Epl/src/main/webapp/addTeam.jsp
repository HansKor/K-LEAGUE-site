<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
	<link rel="stylesheet"
	href="./resources/css/bootstrap.min.css">
<title>팀 등록</title>
</head>
<body>
	<div style="width:1900px;" align="center">
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">팀 등록</h1>
		</div>
	</div>
	<div class="container">
		<form name="newTeam" action="./processAddTeam.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">팀 명</label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">연고지</label>
				<div class="col-sm-3">
					<input type="text" name="home" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">구장</label>
				<div class="col-sm-3">
					<input type="text" name="filed" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">감독</label>
				<div class="col-sm-3">
					<input type="text" name="coach" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
			<label class="col-sm-2">이미지</label>
			<div class="col-sm-5">
				<input type="file" name="teamImage" class="form-control">
			</div>
		</div>
		<div class="form-group row">
			<div class="col-sm-offset-2 col-sm-10">
				<input type="submit" class="btn btn-primary" value="등록">
				
			</div>
		</div>
		</form>
		</div>
	</div>
	<hr >
    
	<jsp:include page="footer.jsp" />
</body>
</html>