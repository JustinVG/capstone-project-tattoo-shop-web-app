<%-- 
    Document   : kyle
    Created on : Jul 24, 2021, 9:39:26 PM
    Author     : 842458
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>&#127752; Good Friend Tattoo &#127752;</title>

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Hachi+Maru+Pop&family=Roboto&family=Indie+Flower&family=Otomanopee+One&display=swap" rel="stylesheet">

    <!-- Google Icons -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="./assets/styles/kyle.css">
        <title>Artists</title>
    </head>
    <body>
        <header>
        <!-- <h1><a href="./prototype.html" title="Good Friend Home">Good Friend</a></h1> -->
        <h1><a href="home" title="Good Friend Home">
        <span id="letter-g">G</span><span id="letter-o-1">o</span><span id="letter-o-2">o</span><span id="letter-d-1">d</span>
        <span id="letter-f">F</span><span id="letter-r">r</span><span id="letter-i">i</span><span id="letter-e">e</span><span id="letter-n">n</span><span id="letter-d-2">d</span>
        </a></h1> 
       
        <nav>
            <div>
            <ul>
               <li><a href="about">About</a></li>
                <li><a href="tattoos">Tattoos</a></li>
                <li><a href="policies">Policies</a></li>
                <li><a href="contact">Contact</a></li>
               <div class="dropdown"> 
               <li><a href="#artist-section">Artists</a></li>  
                 <div class="dropdown-content">  
                   <a href=" <c:url value='/kyle' /> ">Kyle</a>
                   <a href=" <c:url value='/steph' /> ">Steph</a>
                   <a href=" <c:url value='/jean' /> ">Jean</a>
                </div>
               </div>
               
                <!-- <li><a href="#">FAQ</a></li> -->
            </ul>
                </div>
        </nav>
        <div class="toggle">
            <a class="btn" href="bookAppointment">Tattoo Consult</a>
            <!-- <button type="submit">Tattoo Inquiry</button> -->
            <!--<i class="material-icons" id="hamburger-menu" role="navigation">menu</i> -->
        </div>    
    </header>
                
                
        <section class="showcase">
                <div class="overlay"></div>
                <div class="text" ><h2>Bio:</h2>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam dolore omnis placeat eligendi iure.
                    Voluptas mollitia sit corporis, accusantium veritatis unde esse voluptatum id molestias. Libero odit odio voluptas omnis.</p>
                    <br>
                    <div class="contact">
                    <h2>Contact Me:</h2>
                    <p><a href="https://www.instagram.com/its.tatty.time/" target="_blank">@its.tatty.time</a></p>
                    </div>
                    <br><br><br>
                    <img src="./assets/images/girl.jpg" alt="Girl">
                </div>
            </section>  
    </body>
</html>
