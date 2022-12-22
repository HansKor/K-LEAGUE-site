<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet"
	href="./resources/css/bootstrap.min.css" />
<title>Login</title>
</head>
<body>
	<div style="width:1930px;" align="center">
	<jsp:include page="menu.jsp" />
	<div class="jumbotron" style="background-color:white">
		<div class="container">
			<h1 class="display-4" text >K-LEAGUE 로그인</h1>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-d col-md-offset-4">
			<h3 class="form-signin-heading">Please sign in</h3>
			<%
				String error = request.getParameter("error");
				if ( error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해주세요");
					out.println("</div>");
				}
			%>
			<form class="form-signin" action="processLoginMember.jsp" method="post">
				<div class="form-group">
					<label for="inputUserName" class="sr-only">User Name</label>
					<input type="text" class="form-control" placeholder="ID" 
					name='id' required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label>
					<input type="password" class="form-control" placeholder="Password" 
					name='password' required>
				</div>
				<button class="btn btn-outline-secondary"
				type="submit">로그인</button>
				
				<a href="addMember.jsp"><button class="btn btn-outline-secondary"
				type="button">회원가입</button></a>								
			</form>
		</div>
	</div>
	</div>
	<hr>
	<jsp:include page="footer.jsp" />
</body>
</html>