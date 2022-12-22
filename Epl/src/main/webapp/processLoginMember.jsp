<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String password = request.getParameter("password");
%>

	<sql:setDataSource var="dataSource"
	url="jdbc:oracle:thin:@localhost:1521:orcl" 
	driver="oracle.jdbc.driver.OracleDriver" user="football" password="football" />
	
	<sql:query var="resultSet" dataSource="${dataSource}">
		select * from member where id = ? and password = ?
		<sql:param value="<%=id %>" />
		<sql:param value="<%=password %>" />
	</sql:query>
	
	<c:forEach var="row" items="${resultSet.rows}">
	<%
		session.setAttribute("sessionId", id);
	%>
	<c:redirect url="hello.jsp" />

</c:forEach>