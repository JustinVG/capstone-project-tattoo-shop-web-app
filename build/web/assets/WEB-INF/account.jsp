<%-- 
    Document   : account
    Created on : Apr 21, 2021, 2:44:57 PM
    Author     : 709488
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./assets/css/account.css" rel="stylesheet" type="text/css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Caveat&display=swap" rel="stylesheet">
     
        <title>Account</title>
    </head>
    <body>
        <h1>Manage Account</h1>
        <h3>Edit User</h3>
        <form action="account" method="POST">
            <input type="hidden" name="selectedUsername" value="${user.username}">
            username: <input type="text" name="username" value="${selectedUser.username}" readonly><br>
            password: <input type="password" name="password" value="${selectedUser.password}"><br>
            first name: <input type="text" name="firstname" value="${selectedUser.firstName}"><br>
            last name: <input type="text" name="lastname" value="${selectedUser.lastName}"><br>
            email: <input type="email" name="email" value="${selectedUser.email}"><br>
            <input type="hidden" name="action" value="edit">
            <input type="submit" value="Save">
        </form>
        <form action="account" method="POST">
            <input type="hidden" name="selectedUsername" value="${user.username}">
            <input type="hidden" name="username" value="${selectedUser.username}" readonly><br>
            <input type="hidden" name="password" value="${selectedUser.password}"><br>
            <input type="hidden" name="firstname" value="${selectedUser.firstName}"><br>
            <input type="hidden" name="lastname" value="${selectedUser.lastName}"><br>
            <input type="hidden" name="email" value="${selectedUser.email}"><br>
            <input type="hidden" name="action" value="deactivate">
            <input type="submit" value="Deactivate Account">
        </form>
        <p>
            <a href=" <c:url value='/inventory' /> ">Inventory</a>
        </p>
        <p>
            <a href=" <c:url value='/login' /> ">Log out</a>
        </p>
    </body>
</html>
