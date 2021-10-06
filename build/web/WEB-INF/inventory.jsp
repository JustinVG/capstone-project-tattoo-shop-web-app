<%-- 
    Document   : inventory
    Created on : Feb 19, 2021, 2:49:59 PM
    Author     : 709488
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventory Page</title>
        <link href="./assets/css/Inventory.css" rel="stylesheet" type="text/css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300&display=swap" rel="stylesheet"> 
        
    </head>
    <body>
        <h1>Inventory for ${user_name}</h1>
        <div class ="container">
        <table class="table" cellpadding="5" border="1">
            <tr class ="table-row">
               
                <th>Name</th>
                <th>Minus</th>
                <th>Amount</th>
                <th>Add</th>
                <th>Delete</th>
                
            </tr>
            <c:forEach var="item" items="${itemsList}">
                <tr class="table-row"> 
               
                <td class="table-column">${item.itemName}</td>
                <td class="table-column">
                    <form action="inventory" method="post" >
                    <input type="submit" id="minus" name="minus" value="-" >
                    <input type="hidden" name="action" value="minus">
                    <input type="hidden" name="itemID" value="${item.itemID}">
                    <input type="hidden" name="itemPrice" value="${item.price}">
                    <input type="hidden" name="itemName" value="${item.itemName}">
                </form>
                </td>
                <td class="table-column">${item.price}</td>
                 <td class="table-column">
                     <form action="inventory" method="post" >
                     <input type="submit" id="plus" name="plus" value="+" >
                      <input type="hidden" name="action" value="plus">
                    <input type="hidden" name="itemID" value="${item.itemID}">
                    <input type="hidden" name="itemPrice" value="${item.price}">
                     <input type="hidden" name="itemName" value="${item.itemName}">
                     </form>
                 </td>
                <td class="table-column">
                        <form action="inventory" method="post" >
                            <input class="trash" type="submit">
                            <input type="hidden" name="action" value="delete">
                            <input type="hidden" name="itemID" value="${item.itemID}">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
         </div>
        
    
        <div class="additem">
        <h2>Add Item</h2>

        <form action="inventory" method="POST">
            <div class="itemInput">
                <div class="neonletters">
            <label for="category">Category</label>
            <select name="category" id="category">
                <c:forEach var="category" items="${categories}">
                <option value="${category.categoryID}">${category.categoryName}</option>
                </c:forEach>
            </select> 
            <br>
            <label for ="itemName">Item Name</label>
            <input type="text" id="itemName" name="itemName">
            <br>
            
            <label for ="price">Amount</label>
            
            <input type="number" id="price" name="price" min="0" max="10000">
            <input type="hidden" name="itemID" value="${item.itemID}">
            <br>
            <input type="submit" name="action" value="add">
            <br>
           
            </div>

        </form>
        <p>
            ${errorMessage}
        </p>
        <br>
       
        <br>
         <p>
        <a href="login">Logout</a>
        </p>
        <p>
        <a href="account">Manage Account</a>
        </p>
       </div>
</div>
    </body>
</html>
