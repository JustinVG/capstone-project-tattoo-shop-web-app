<%-- 
    Document   : subscription
    Created on : Jun 15, 2021, 6:12:04 PM
    Author     : 834171
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subscribe</title>
        <link href="assets/css/subscription.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:ital,wght@1,700&display=swap" rel="stylesheet">
    </head>
    <body>
        <h1>Subscribe</h1>
        <form action="subscription" method="POST">
            <div class="form-group">    
                <label>Your Email:</label>
                <input type="email" name="mail" value="${email}">
            </div>
            <div class="in">
            <input type="submit" name="action" value="subscribe">
            <input type="submit" name="action" value="unsubscribe">
            </div>
        </form>
        <p>${errorMessage}</p>
    </body>
</html>
