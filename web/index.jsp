<%--
  Created by IntelliJ IDEA.
  User: Natasha
  Date: 8/12/2016
  Time: 1:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Duke's Bookstore</title>
  </head>
  <%@ page import= "model.*" %>
  <%
    BookDAO db = new BookDAO();
    BooksEntity book = db.getBook();
  %>
  <body bgcolor="#ffffff">
  <center>
    <hr>
    <br> &nbsp; <h1><font size ="+3" color="#CC0066">Duke's </font> <img src="./duke.books.gif" alt="Duke holding books">
    <font size = "+3" color="black">Bookstore</font></h1>
    <br> &nbsp;
    <hr>
  </center>
  <br> <b>What we are reading</b>
  <blockquote><em><a href="bookdetails?bookId=<%= book.getId() %>"><%= book.getTitle() %></a></em> <%= book.getDescription() %>
  </blockquote>
  <p><a href="bookcatalog"><b>Start Shopping</b></a></p>
  </body>
</html>