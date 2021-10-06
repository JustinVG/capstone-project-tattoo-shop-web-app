<%-- 
    Document   : contact
    Created on : Jun 17, 2021, 9:14:25 AM
    Author     : 834171
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
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
        
        <div class="contact-container" >
            <form action="contact" method="POST">
                <h1>Contact us</h1>
                
                <div>
                    <label for="artistname">Select Artist:</label>
                    <select id="artistname" name="artist">
                        <option value="">Choose</option>
                        <option value="a">a</option>
                        <option value="b">b</option>
                        <option value="c">c</option>
                    </select>
                </div>
                <div>
                    <label for="name">Your Name:</label>
                    <input type="text" name="name" id="name" value="${name}">
                </div>
                <div>
                    <label for="number">Your Mobile number:</label>
                    <input type="tel" name="mobile" id="subject" value="${number}">
                </div>
                <div>    
                    <label for="email">Your Email:</label>
                    <input type="email" name="mail" id="mail" value="${email}">
                </div>
                <div>
                    <label for="message">Your Message:</label>
                    <input type="textbox" name="mess" id="body" value="${mess}">
                </div>
                <input class="btn-contact" type="submit" value="submit" onclick="validateform();">
            </form>
            <center>
                <h3>${Message}</h3>
            </center>
        </div>
            
                            
<!--        <figure class="fig-contact-us">
            <img src="./assets/images/send-email-cropped.svg" class="img-send-email" alt="Send Email">
        </figure>-->
            
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
    <footer>
        <p>Artist owned collective on Treaty 7 Territory</p>
        <p>All body's welcome, 18+.</p>
        <p>&copy; Good Friend Tattoo<a href="admin">Admin</a></p>

    </footer>
        <script src="./assets/scripts/scripts.js"></script>
        <script  type="text/javascript" src="./assets/scripts/contactscripts.js"></script>

    </body>
</html>
