<%-- 
    Document   : home
    Created on : Jun 16, 2021, 4:29:37 PM
    Author     : Capstone ITSD - Good Friend Tattoo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>&#127752; Good Friend Tattoo Artists &#127752;</title>

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Hachi+Maru+Pop&family=Roboto&family=Indie+Flower&family=Otomanopee+One&display=swap" rel="stylesheet">

    <!-- Google Icons -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <!-- CSS Stylesheet(s) -->
    <link rel="stylesheet" href="./assets/styles/artists.css">
</head>
<body>

    <header>
        <!-- <h1><a href="./prototype.html" title="Good Friend Home">Good Friend</a></h1> -->
        <h1><a href="home" title="Good Friend Home">
        <span id="letter-g">G</span><span id="letter-o-1">o</span><span id="letter-o-2">o</span><span id="letter-d-1">d</span>
        <span id="letter-f">F</span><span id="letter-r">r</span><span id="letter-i">i</span><span id="letter-e">e</span><span id="letter-n">n</span><span id="letter-d-2">d</span>
        </a></h1> 
       
        <nav>
            <ul>
                <li><a href="about">About</a></li> 
                <li><a href="artists">Artists</a></li>  
                <li><a href="tattoos">Tattoos</a></li>
                <li><a href="policies">Policies</a></li>
                <li><a href="contact">Contact</a></li>
            </ul>
        </nav>
        <div class="toggle">
            <a class="btn" href="bookAppointment">Tattoo Consult</a>
            <!-- <button type="submit">Tattoo Inquiry</button> -->
            <i class="material-icons" id="hamburger-menu" role="navigation">menu</i>
        </div>    
    </header>

    <section class="artists-intro">
        <h2>&#x1F31F; Meet Steph, Kyle and Jean! &#x1F31F;</h2>
            <figure class="meet-artists">
                <img class="welcome-latest" src="./assets/images/good-friend-crew.jpg" alt="Steph, Jean and Kyle, the three tattoo artists who make up Good Friend Tattoo, relaxing together in a balcony selfie.">
            </figure>
        <p>Good Friend Tattoo is made up of three passionate tattoo artists, Steph, Kyle and Jean! Together they embody the spirit of Good Friend Tattoo, which is to create and foster a welcoming and safe space for everyone.</p>
        <div class="artist-sketch-showcase">
            <figure>
                <img src="./assets/images/Kyle/kyle-friends-sky.jpg" alt="Drawing by Kyle of three friends under an artistic sky.">
            </figure>
            <figure>
                <img src="./assets/images/Jean/jean-drawing-magic-moth.jpg" alt="Drawing by Jean of a magical moth presented in a tarot card format.">
            </figure>
            <figure>
                <img src="./assets/images/Steph/steph-drawing-vase-window.jpg" alt="Drawing by Steph of a flower and vase next to a ladder leading up to a magical window.">
            </figure>
        </div>
        <p>Ensuring that if someone wants to get a tattoo or even just have a conversation about tattoos, that they feel comfortable, informed and excited whether or not they ultimately choose to embark on or continue their tattoo journey!</p>
    </section>
    
    <section class="artists" id="artist-section">
        <h2>Good Friend Artists</h2>
        <figure>
            <img class="artists-square" src="./assets/images/square-colours-edit.jpg" alt="Good Friend flash day text on fridge surrounded by fruits and vegtables in a celebratory fashion.">
            <!-- <img src="./assets/images/window-ladder.png" alt="Arms and Hands Linked to Create a Heart"> -->
        </figure>
        <h3>Instagrams</h3>
        <p>Steph: <a href="https://www.instagram.com/cutebut.weird/" target="_blank">@cutebut.weird</a></p>
        <p>Jean: <a href="https://www.instagram.com/conjeaniality/" target="_blank">@conjeaniality</a></p>
        <p>Kyle: <a href="https://www.instagram.com/its.tatty.time/" target="_blank">@its.tatty.time</a></p>
    </section>

    <section class="book-tattoo" id="tattoo-inquiry">
        <h2>Book A Tattoo Consult</h2>
        <p>Connect with one of our artists for a tattoo consultation and begin planning your tattoo!</p>
        <p><a href="bookAppointment" class="btn-tattoo-consult" title="Book A Tattoo Appointment with Good Friend Tattoo">Book Tattoo</a></p>
        <!-- <p> <a class="btn-main-consult" id="btn-tattoo-review" href="bookAppointment">Book Tattoo</a></p> -->
        <!-- <a class="btn" href="#tattoo-inquiry">Tattoo Consult</a> -->
        <!-- TODO: Create form here! -->
        <!-- <div class="book-tattoo-btn" id="book-tattoo-form"></div> -->
    </section>

    <section class="subscribe" id="subscribe-section">
        <h2>Subscribe Good Friend Tattoo</h2>
        <form action="home" method="POST">
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
    </section>
    
    <section class="contact">
        <h2>Contact Good Friend Tattoo</h2>
        <p>There are multiple ways to get in touch with Good Friend, reach out now and let's be friends!</p>
        <p><a href="contact" class="btn-tattoo-consult" title="Contact Good Friend Tattoo">Contact Good Friend</a></p>
    </section>

    <button onclick="topFunction()" id="scrollToTopBtn" title="Go to top">Top</button>

    <footer>
        <p>Artist owned collective on Treaty 7 Territory</p>
        <p>All body's welcome, 18+.</p>
        <p>&copy; Good Friend Tattoo<a href="admin">Admin</a></p>
    </footer>

    <script src="./assets/scripts/scripts.js"></script>

</body>
</html>
