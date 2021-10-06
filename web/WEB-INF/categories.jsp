<%-- 
    Document   : categories
    Created on : Apr 22, 2021, 12:06:10 PM
    Author     : 709488
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./assets/css/categories.css" rel="stylesheet" type="text/css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Caveat&display=swap" rel="stylesheet">
        <title>Categories</title>
    </head>
    <body>
        <h1>Manage Categories</h1>
        <table cellpadding="5" border="1">
            <c:forEach var="category" items="${categories}">
                <tr> 
                    <td value="${category.categoryID}">${category.categoryName}</td>
                    <td>
                        <form action="categories" method="get">
                            <input type="submit" value="Edit">
                            <input type="hidden" name="action" value="view">
                            <input type="hidden" name="selectedCategory" value="${category.categoryID}">
                        </form>
                    </td>
                </tr> 
            </c:forEach>

        </table>
        <c:if test="${selectedCategory == null}">
            <h3>Add Category</h3>
            <form action="categories" method="POST">
                Category Name: <input type="text" name="category"><br>
                <input type="hidden" name="action" value="add">
                <input type="submit" value="Save">
            </form>
        </c:if>
        <c:if test="${selectedCategory != null}">
            <h3>Edit Category</h3>
            <form action="categories" method="POST">
                Category Name: <input type="text" name="category" value="${selectedCategory.categoryName}"><br>   
                <input type="hidden" name="catid" value="${selectedCategory.categoryID}"><br> 
                <input type="hidden" name="action" value="edit">
                <input type="submit" value="Save">
            </form>
        </c:if>
        <p>

            <a href=" <c:url value='/login' /> ">Log out</a>

        </p>
        <p>
            <a href=" <c:url value='/inventory' /> ">Inventory</a>
        </p>

    </body>
</html>
