<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html  lang="vi">

<head>
<meta charset="UTF-8">
<title>Delete student from professor's list</title>
<style> body{background-image: linear-gradient(to bottom right, #FBEEE6, #FFE5D8, #FFCAD4, #F3ABB6, #9F8189);} </style>
</head>
<body>
	<h1 style="text-align: center">
		<font color="#FE676E" face="Verdana">Delete student from professor's list</font>
	</h1>
	<form action="Home" method="get" style="color: #6495ED">
		<input type="hidden" name="flag" value="flag_1">
		Student Code:<input type="text" name="noStudent" style="color: #FF6A6A"><br>
		<br> Professor Code:<input type="text" name="noProfessor" style="color: #FF6A6A"><br>
		<br> <input type="submit" value="Delete" style="background: #8DEEEE ; color: #6495ED; border: 1px solid #FFFF00; margin: 10px; padding: 5px">
	</form>
</body>
</html>