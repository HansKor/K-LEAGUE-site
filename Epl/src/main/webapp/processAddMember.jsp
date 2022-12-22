<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page import="java.util.*" %>
<%@ page import="java.time.format.*" %>
<%@ page import="java.time.*" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String password = request.getParameter("password");	
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String birthyy = request.getParameter("birthyy");
	String birthmm = request.getParameter("birthmm");
	String birthdd = request.getParameter("birthdd");
	String birth = birthyy + "/" + birthmm + "/" + birthdd;
	String mail1 = request.getParameter("mail1");
	String mail2 = request.getParameter("mail2");
	String mail = mail1 + "@" + mail2;
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
	LocalDateTime now = LocalDateTime.now();
	String regist_day = now.format(DateTimeFormatter.ofPattern("yyyy/MM/dd HH/mm/ss"));
%>	
	
	<sql:setDataSource var="dataSource"
		url = "jdbc:oracle:thin:@localhost:1521:orcl"
		driver="oracle.jdbc.driver.OracleDriver"
		user = "football"
		password = "football" />
	
	<sql:update dataSource="${dataSource}" var="resultSet">
		INSERT INTO member VALUES (?,?,?,?,?,?,?,?,?)
		<sql:param value="<%=id %>" />
		<sql:param value="<%=password %>" />
		<sql:param value="<%=name %>" />
		<sql:param value="<%=gender %>" />
		<sql:param value="<%=birth %>" />
		<sql:param value="<%=mail %>" />
		<sql:param value="<%=phone %>" />
		<sql:param value="<%=address %>" />
		<sql:param value="<%=regist_day %>" />
	</sql:update>
	
	<c:redirect  url="./resultMember.jsp"/>