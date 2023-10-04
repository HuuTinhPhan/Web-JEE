<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="home.css">
<title>Home</title>
<style> body{background-image: linear-gradient(to bottom right, #FBEEE6, #FFE5D8, #FFCAD4, #F3ABB6, #9F8189);} </style>
</head>
<body>
	<h1 style="text-align:center"><font color="#FE676E" face="Verdana" >MANAGEMENT REGISTER PROFESSOR</font></h1>
		<ul>
			<li><a href="register.jsp">Register</a></li>
			<li><a href="registerHistory.jsp">Data Register</a></li>
			<li class="dropdown">
				<a class="dropbtn">Management</a>
				<div class="dropdown-content">
					<a href="students.jsp">Students</a>
					<a href="professors.jsp">Professors</a>
				</div>
			</li>
			<li><a href="searchStudent.jsp">Students from professor's list </a></li>
			<li><a href="delete.jsp">Delete Student </a></li>
		</ul>
</body>
</html>