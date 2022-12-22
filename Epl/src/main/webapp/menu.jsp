<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<a class = "navbar-brand" href="https://gangwon-fc.com/" ><img alt="Premier League " src="./upload2/team2.png" width="80"></a>
<a class = "navbar-brand" href="https://www.fcseoul.com/" ><img alt="Premier League " src="./upload2/team1.png" width="80"></a>
<a class = "navbar-brand" href="https://www.gwangjufc.com/" ><img alt="Premier League " src="./upload2/team4.png" width="80"></a>
<a class = "navbar-brand" href="https://www.busanipark.com/" ><img alt="Premier League " src="./upload2/team5.png" width="80"></a>
<a class = "navbar-brand" href="http://gimcheonfc.com/" ><img alt="Premier League " src="./upload2/team6.png" width="80"></a>
<a class = "navbar-brand" href="https://www.uhfc.tv/" ><img alt="Premier League " src="./upload2/team7.png" width="80"></a>
<a class = "navbar-brand" href="https://www.jeju-utd.com/" ><img alt="Premier League " src="./upload2/team8.png" width="80"></a>
<a class = "navbar-brand" href="https://www.steelers.co.kr/" ><img alt="Premier League " src="./upload2/team9.png" width="80"></a>
<a class = "navbar-brand" href="http://www.bluewings.kr/" ><img alt="Premier League " src="./upload2/team10.png" width="80"></a>
<a class = "navbar-brand" href="https://www.incheonutd.com/main/index.php" ><img alt="Premier League " src="./upload2/team11.png" width="80"></a>
<a class = "navbar-brand" href="https://www.daegufc.co.kr/main/" ><img alt="Premier League " src="./upload2/team14.png" width="80"></a>
<a class = "navbar-brand" href="http://www.hyundai-motorsfc.com/" ><img alt="Premier League " src="./upload2/team13.png" width="80"></a>

<nav class="navbar navbar-expand- navbar-dark" style="background-color:rgb(88,88,88) ">
	<div class = "container">
		<div class = "navbar-header">
			<a class = "navbar-brand" href="./hello.jsp" ><img alt="Premier League " src="./upload2/k1.jpg" width="80">K LEAGUE </a>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				
				<c:choose>
					<c:when test="${empty sessionId }">
						<li class="nav-item"><a class="nav-link" href="<c:url value="login.jsp"/>">
						로그인</a></li>
						
					</c:when>
					<c:otherwise>
						<li style="padding-top: 7px; color:white">[<%=sessionId %>님]</li>
						<li class="nav-item"><a class="nav-link" href='<c:url value="logoutMember.jsp"/>'>
						로그아웃</a></li>
						
					</c:otherwise>
				</c:choose>
				
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="gameDay.jsp">경기일정</a></li>
			</ul>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="#">축구뉴스</a></li>
			</ul>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="#">하이라이트</a></li>
			</ul>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="teamInfomation.jsp">팀정보</a></li>
			</ul>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="<c:url value="/BoardListAction.do?pageNum=1"/>">자유게시판</a></li>
			</ul>
		</div>
	</div>
</nav>