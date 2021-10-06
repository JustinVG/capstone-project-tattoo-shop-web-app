

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="./assets/css/login.css" rel="stylesheet" type="text/css"/>
    </head>
<body>
        
        <div class="login"> 
            <h1>Good Friend Tattoo</h1>
        
        
        <form action="login" method="POST" >
            
             <input type="text" placeholder="Username" name="userName" id="username">
             <br>
             
             <input type="password" placeholder="Password" name="password" id="password">
             <br>
             <input type="submit" value="Login">
            </div> 
        <div class="shadow"></div>
        </form>
        
        
        
        <p>
        ${errorMessage}
        </p>
        
        <div class="home-link">
            <a href="home" title="Good Friend Home">Good Friend Home</a>
        </div>
        
        </body>  
</html>
