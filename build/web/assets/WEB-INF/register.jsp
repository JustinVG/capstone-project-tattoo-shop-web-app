<%-- 
    Document   : register
    Created on : Apr 21, 2021, 9:32:59 AM
    Author     : 709488
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <h1>Register!</h1>
        <%--<c:if test="${selectedUser == null}"> --%>
            <h3>Register</h3>
            <form action="register" method="POST">
                username: <input type="text" name="username"><br>
                password: <input type="password" name="password"><br>
                first name: <input type="text" name="firstname"><br>
                last name: <input type="text" name="lastname"><br>
                email: <input type="email" name="email"><br>
                <input type="hidden" name="action" value="add">
                <input type="submit" value="Save">
            </form>
            <p>
        ${loginMessage}
        </p>
            <a href=" <c:url value='/login' /> ">Return To Log-in</a>
       <%-- </c:if> --%>
        
        
    </body>
</html>
