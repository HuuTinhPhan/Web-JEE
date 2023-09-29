<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Status of Your Order</title>
<style> body{background-image: linear-gradient(to bottom right, #FBEEE6, #FFE5D8, #FFCAD4, #F3ABB6, #9F8189);} </style></head>
<body>
	<h1 style="text-align:center"><font color="#FE676E" face="Verdana">Status of Your Order</font></h1>
	<table border="1" style="margin: 0 auto;" >
		<tr bgcolor="#FA8072">
			<th>Item ID</th>
			<th>Title</th>
			<th>Unit Cost</th>
			<th>Number</th>
			<th>Total Cost</th>
		</tr>
		<c:forEach var="item" items="${itemsOrdered}">
			<tr bgcolor="#FFDCA2" style="text-align:center">
				<td>${item.bookId}</td>
				<td><i>${item.title}<b> ${item.title_Plus}</b></i></td>
				<td>$ ${item.price}</td>
				<td>
					<form action="OrderPage" method="get">
						<input type="hidden" name="itemID" value="${item.bookId}">
						<input type="text" name="number" size="3" value="${item.number}" style="text-align:center;">
						<input type="submit" value="Update Order" style="background-color: #C2649A;border: 0.5px solid black; color: white">
					</form>
				</td>
				<td>$ ${item.totalCost}</td>
			</tr>
		</c:forEach>
	</table>
		<form action="BookStore" method="get">
			<p style="text-align:center"><input type="submit" value="Back" style="background-color: pink;border: 1px solid black; color: white"></p>	
		</form>
</body>
</html>