<%@ page import="model.BooksEntity" %>
<%@ page import="java.awt.print.Book" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Natasha
  Date: 8/12/2016
  Time: 3:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Duke's BookStore</title>
</head>
<%
    List<BooksEntity> books = (List<BooksEntity>)request.getAttribute("books");
%>
<body bg ="#ffffff">
<center>
    <hr>
    <br> &nbsp; <h1><font size="+3" color="#CC0066">Duke's </font><img src="./duke.books.gif" alt="Duke holding books">
    <font size="+3" color="black">Bookstore</font></h1>
    <br> &nbsp;
    <hr>
    </center>
</center>
<br>
<h3>Please Choose from our selection</h3>
<br>
<center>
    <table summary="layout">
        <%
            for (BooksEntity book : books) {
        %>
        <tr>
            <td bgcolor="#ffffaa"><a href="./bookdetails?bookId=<%= book.getId() %>"> <strong><%= book.getTitle()%></strong></a></td>
            <td bgcolor="#ffffaa" rowspan=2><%= book.getPrice() %></td>
            <td bgcolor="#ffffaa" rowspan=2><a href="./bookcatalog?bookId=<%= book.getId() %>"> Add to Cart </a></td>
        </tr>
        <tr>
            <td>by<em><%= book.getSurname() %></em></td>
        </tr>
        <%
            }
        %>
    </table>
</center>
</body>
</html>
