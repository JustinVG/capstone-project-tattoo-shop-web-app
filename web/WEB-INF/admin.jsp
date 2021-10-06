

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./assets/css/admin.css" rel="stylesheet" type="text/css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Caveat&display=swap" rel="stylesheet">
        <title>Admin Summary</title>
    </head>
    <body>
        <h1>Admin Summary</h1>
        <%-- View all users --%>
        <h2>Manage Users</h2>
        <h2>Welcome ${user_name}</h2>

        <table cellpadding="5">
            <tr>
                <th>Username</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>E-mail</th>
                <th>Edit</th>
                <th>Delete</th>
                <th>Re-Activate</th>
                <th>Demote-admin</th>
                <th>Promote-admin</th>
            </tr>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.username}</td>
                    <td>${user.firstName}</td>
                    <td>${user.lastName}</td>
                    <td>${user.email}</td>
                    <td>
                        <form action="admin" method="get">
                            <input type="submit" value="Edit">
                            <input type="hidden" name="action" value="view">
                            <input type="hidden" name="selectedUsername" value="${user.username}">
                        </form>
                    </td>
                    <td>
                        <form action="admin" method="post" >
                            <input type="submit" value="Delete">
                            <input type="hidden" name="action" value="delete">
                            <input type="hidden" name="selectedUsername" value="${user.username}">
                        </form>
                    </td>
                    <td>
                        <form action="admin" method="post" >

                            <input type="submit" value="reactivate">
                            <input type="hidden" name="action" value="reactivate">
                            <input type="hidden" name="selectedUsername" value="${user.username}">
                        </form>
                    </td>
                    <td>
                        <form action="admin" method="post" >

                            <input type="submit" value="demote">
                            <input type="hidden" name="action" value="demote">
                            <input type="hidden" name="selectedUsername" value="${user.username}">
                        </form>
                    </td>
                    <td>
                        <form action="admin" method="post" >

                            <input type="submit" value="promote">
                            <input type="hidden" name="action" value="promote">
                            <input type="hidden" name="selectedUsername" value="${user.username}">
                        </form>
                    </td>
                </tr>
            </c:forEach>
            <c:if test="${selectedUser == null}">
                <h3>Add User</h3>
                <form action="admin" method="POST">
                    username: <input type="text" name="username"><br>
                    password: <input type="password" name="password"><br>
                    first name: <input type="text" name="firstname"><br>
                    last name: <input type="text" name="lastname"><br>
                    email: <input type="email" name="email"><br>
                    <input type="hidden" name="action" value="add">
                    <input type="submit" value="Save">
                </form>
            </c:if>
            <c:if test="${selectedUser != null}">
                <h3>Edit User</h3>
                <form action="admin" method="POST">
                    username: <input type="text" name="username" value="${selectedUser.username}" readonly><br>
                    password: <input type="password" name="password" value="${selectedUser.password}"><br>
                    first name: <input type="text" name="firstname" value="${selectedUser.firstName}"><br>
                    last name: <input type="text" name="lastname" value="${selectedUser.lastName}"><br>
                    email: <input type="email" name="email" value="${selectedUser.email}"><br>
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
            <p>
                <a href=" <c:url value='/categories' /> ">Manage Categories</a>
            </p>
    </body>
</html>
