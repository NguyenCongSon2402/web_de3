<%-- 
    Document   : Show
    Created on : Jun 25, 2022, 12:49:29 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Show</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>BookCode</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Category</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listB}" var="o">
                    <tr>
                        <td>${o.bookcode}</td>
                        <td>${o.title}</td>
                        <td>${o.author}</td>
                        <td>${o.category}</td>
                        <td>
                            <c:if test="${o.booked==1}">
                                Booked
                            </c:if>
                            <c:if test="${o.booked==0}">
                                <a href="Update?sid=${o.bookcode}">Book</a>
                            </c:if>

                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>
