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
    <title>&#127752; About Good Friend Tattoo &#127752;</title>

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Hachi+Maru+Pop&family=Roboto&family=Indie+Flower&family=Otomanopee+One&display=swap" rel="stylesheet">

    <!-- Google Icons -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <!-- CSS Stylesheet(s) -->
    <link rel="stylesheet" href="./assets/styles/main-styles.css">
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

    <section class="home-splash">
        <!-- Welcome to Good Friend! -->
        <figure>
            <img class="about-goodfriend" src="./assets/images/Kyle/kyle-wavy-roads-edit.jpg" alt="Hand-drawn colourful road leading to the horizon.">
        </figure>
    </section>

    <section class="values" id="about-section">
        <h2>About Good Friend Tattoo!</h2>
        <!-- <h2>About Good Friend - Core Values</h2> -->
        <p>Good Friend Tattoo was created to provide a safe space for everybody interested in the art of tattooing to feel welcome and respected, and to enable and support one another throughout all phases of our own unique tattoo journeys.</p>
    </section>
    
    <section class="location">
        <h2>Good Friend Tattoo Location</h2>
        <address>
            <p>1235 17 Ave SW #210, Calgary, AB T2T 3M9</p>
            <iframe id="location-map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d887.0062703011862!2d-114.09305256234344!3d51.037712549589735!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x537171a31b1630d5%3A0xb28a1c952767a5a6!2sGood%20Friend%20Tattoo!5e0!3m2!1sen!2sca!4v1626202234927!5m2!1sen!2sca" width="600" height="450" allowfullscreen="" loading="lazy"></iframe>
            <p>
                <h3>Hours of Operation:</h3>
                <ul id="hours-operation">
                    <li>Monday: 11a.m. - 7p.m.</li>
                    <li>Tuesday: 11a.m. - 7p.m.</li>
                    <li>Wednesday: 11a.m. - 7p.m.</li>
                    <li>Thursday: 11a.m. - 7p.m.</li>
                    <li>Friday: 11a.m. - 7p.m.</li>
                    <li>Saturday: Closed</li>
                    <li>Sunday: Closed</li>
                </ul>
            </p>
        </address>
    </section>
    
    <section class="artists-about" id="artist-section">
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

    <section class="policies" id="policy-section">
        <h2>Good Friend Tattoo Policies</h2>
        <p>We have numerous policies in place to protect the health and safety of all our customers and employees.</p>
        <p><a href="policies" title="Policies of Good Friend Tattoo">Policies</a></p>
    </section>

    <section class="contact" id="contact-section">
        <h2>Connect with Good Friend Tattoo!</h2>
        <p>There are multiple ways to get in touch with Good Friend, reach out now and let's be friends!</p>
        <p><a href="contact" class="btn-tattoo-consult" title="Contact Good Friend Tattoo">Contact Good Friend</a></p>
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

    <button onclick="topFunction()" id="scrollToTopBtn" title="Go to top">Top</button>

    <footer>
        <p>Artist owned collective on Treaty 7 Territory</p>
        <p>All body's welcome, 18+.</p>
        <p>&copy; Good Friend Tattoo<a href="admin">Admin</a></p>

    </footer>

    <script src="./assets/scripts/scripts.js"></script>

</body>
</html>
