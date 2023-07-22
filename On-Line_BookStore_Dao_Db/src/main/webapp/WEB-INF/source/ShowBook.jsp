<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Book</title>
<style>
body {
	background-image: linear-gradient(to bottom right, #FBEEE6, #FFE5D8, #FFCAD4, #F3ABB6,
		#9F8189);
}
</style>
</head>
<body>
	<HR>
	<I>${book.title}</I>
	<B>${book.title_plus} $${book.price}</B>
	<br>${book.description}
	<form action=OrderPage method="post">
		<input type="hidden" name="itemID" value="${book.bookID}">
		<p style="text-align: center">
			<input type="submit" value="Add to Shopping Cart"
				style="background-color: pink; color: black;">
		</p>
	</form>
</body>
</html>