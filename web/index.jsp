<%-- 
    Document   : index
    Created on : Jun 25, 2022, 12:33:54 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Search</h1>
        <form action="SearchBook" method="post">
            Bookcode: <input type="text" name="bookcode" value="${sessionScope.book.bookcode}" required="" autofocus=""></br>
            Title:    <input type="text" name="title" value="${sessionScope.book.title}" required="" autofocus=""></br>
            Author:   <input type="text" name="author" value="${sessionScope.book.author}" required="" autofocus=""></br>
            Category: <input type="text" name="category" value="${sessionScope.book.category}" required="" autofocus=""></br>
            <button type="submit">Search</button>
        </form>
    </body>
</html>
