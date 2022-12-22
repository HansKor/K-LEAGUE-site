<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet"
	href="./resources/css/bootstrap.min.css">
<script type="text/javascript">
	function checkForm() {
		
 		let form1 =  "newMember";
		
		if (!document.forms[form1].elements["id"].value) {
			alert("아이디를 입력하세요.");
			return false;
		}

		if (!document.newMember.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		if (document.newMember.password.value != document.newMember.password_confirm.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}
</script>	
<title>회원 가입</title>
</head>
<body>
<div style="width:1900px;" align="center">
	<jsp:include page="menu.jsp" />
	</div>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원가입</h1>
		</div>
	</div>
	<div class="container">
		<form name="newMember" action="processAddMember.jsp" 
		class="form-horizontal" method="post" onsubmit="return checkForm()">
			<div class="form-group row">
			<label class="col-sm-2">아이디</label>
			<div class="col-sm-3">
				<input type="text" id="id" name="id" class="form-control" placeholder="id">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">비밀번호</label>
			<div class="col-sm-3">
				<input type="text" id="password" name="password" class="form-control" placeholder="password">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">비밀번호확인</label>
			<div class="col-sm-3">
				<input type="text" id="password_confirm" name="password_confirm" class="form-control" placeholder="password confirm">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">성명</label>
			<div class="col-sm-3">
				<input type="text" id="name" name="name" class="form-control" placeholder="name">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">성별</label>
			<div class="col-sm-5">
				<input type="radio" id="gender" name="gender" value="Men">남
				<input type="radio" id="gender" name="gender" value="Wom">여
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">생일</label>
			<div class="col-sm-4">
				<input type="text" id="birthyy" name="birthyy" size="5" placeholder="년(4자)">
				<select name="birthmm">
					<option  selected>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
					<option>6</option>
					<option>7</option>
					<option>8</option>
					<option>9</option>
					<option>10</option>
					<option>11</option>
					<option>12</option>
				</select>
				<input type="text" id="birthdd" name="birthdd" size="3" placeholder="일">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">이메일</label>
			<div class="col-sm-6">
				<input type="text" id="mail1" name="mail1" size="18"placeholder="email">@
				<select name="mail2">
					<option selected>naver.com</option>
					<option>nate.com</option>
					<option>gmail.com</option>
				</select>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">전화번호</label>
			<div class="col-sm-3">
				<input type="text" id="phone" name="phone" placeholder="phone number" >
			</div>
		</div>
			<div class="form-group row">
			<label class="col-sm-2">주소</label>
			<div class="col-sm-3">
				<input type="text" id="address" name="address" placeholder="address">
			</div>
		</div>
		<div class="form-group row">
			<div class="col-sm-offset-2 col-sm-10">
				<input type="submit" class="btn btn-outline-success" value="등록"
				onclick="#">
				<input type="reset" class="btn btn-outline-success" value="취소"
				onclick="reset()">
			</div>
		</div>
		
		</form>
	</div>
	<hr>
	<jsp:include page="footer.jsp" />
</body>
</html>