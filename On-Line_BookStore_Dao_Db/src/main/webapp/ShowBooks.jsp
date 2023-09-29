<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="Dao.BookDao" %>
<%@page import="Dao.BookDaoImpDb" %>
<%@page import="web.Book" %>
<%@page import="java.util.*" %>
<html>
  <head>
    <title>ALL-Time Best Compute Books</title>
    <style> body{background-image: linear-gradient(to bottom right, #FBEEE6, #FFE5D8, #FFCAD4, #F3ABB6, #9F8189);} </style>
  </head>
  <body>
	<%
	BookDao service = new BookDaoImpDb();
	List<Book> items = service.getAllBooks();
	request.setAttribute("items", items);
	%>
	<h1 align="center" style="color: #FE676E">ALL-Time Best Compute Books</h1>
    <hr>
    <c:forEach var="book" items="${items}">
      	<i>${book.title} <b>${book.title_plus} ${book.price}</b></i><br>
      	<font style="color:#4F4F4F">${book.description}</font><br>
     	<form action="OrderPage" method="get">
        <input type="hidden" name="itemID" value="${book.bookID}"/>
        <p style="text-align:center"><input type="submit" value="Add to Shopping Cart" style="background-color: pink;border: 1px solid black; color: white"></p>
      </form>
     <hr>
    </c:forEach>
  </body>
</html>