<%@page import="Dao.*"%>
<%@page import="web.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students</title>
<style>
body {
	background-image: linear-gradient(to bottom right, #FBEEE6, #FFE5D8, #FFCAD4, #F3ABB6,
		#9F8189);
}
</style>
</head>
<body>
	<%
		Dao service = new DaoImpDb();
		List<Student> students = service.getStudents();
		request.setAttribute("students", students);
	%>
	
	<h1 style="color: #FF69B4; text-align: center">List Students</h1>
	<TABLE border="1" style="margin: 0 auto; text-align: center; border: 5px">
		<TR style="text-align: center; background: #FF69B4; color: #00ffff ">
			<TH>No</TH>
			<TH>Name</TH>
			<TH>Major</TH>
		</TR>
		<c:forEach var="i" items="${students}">
			<TR style="color: #696969">
				<td>${i.no}</td>
				<td>${i.name}</td>
				<td>${i.major}</td>
			</TR>
		</c:forEach>
	</TABLE>
	<form action="home.jsp">
			<p style="text-align:center"><input type="submit" value="Back" style="background-color: pink;border: 1px solid black; color: white"></p>	
		</form>
</body>
</html>