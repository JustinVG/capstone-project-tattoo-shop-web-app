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
            <img class="policies-goodfriend" src="./assets/images/Kyle/kyle-abstract-rectangles.jpg" alt="Hand-drawn colourful abstract rectangles.">
        </figure>
    </section>

    <section class="values" id="about-section">
        <h2>Good Friend Tattoo Policies</h2>
        <!-- <h2>About Good Friend - Core Values</h2> -->
        <p>In light of the current global state we wanted to take this time to speak about our stance as allies to the BIPOC community as well as our plan of action to become more inclusive as artists. As we have now established our tattoo studio, we want to share that our values were set for Good Friend to be as inclusive, comfortable and progressive as possible. </p>
        <p>This means that racism, sexism, homophobia, transphobia and discrimination of any kind are absolutely not tolerated from our artists or our clients. We’ve now realized that this is not enough and are working on doing more. We’ve been education ourselves to be actively anti-racist and are continuing to learn more every day.</p>
        <p>Unfortunately, in the tattoo industry, there are artists who turn down clients because of the colour of their skin. This is because of ignorance and a lack of education and is absolutely unacceptable. We’ve done our research to make sure we can tattoo every skin tone to the best of our ability. Whether this means adjustments to the design, colour palette or technique, we are dedicated to providing you with options so you can have the art you want on your body. We are here to make sure you love the end result and feel heard and safe throughout the process.</p>
        <p>We want to work on better representing the beauty of tattoos on BIPOC. This means diversifying our portfolios and ensuring no photos are filtered. There are a lot of different skin tones and undertones and we have more experience with some than others. We will offer cheaper rates for BIPOC in certain circumstances where we have less experience with that skin type. We will also be offering free colour testing. This means we will find colours we think will best suit your undertone and try them in small dots on an area of your body to see how they heal. This way if you’ve been thinking about a coloured design but have been worried about how it will turn out you can know before fully committing. </p>
        <p>We are here to support and uplift more black artists. We empathize how challenging it is, especially in Calgary, as a black artist who has a dream of pursuing a career in tattooing. Currently, we do not have the space for an apprentice but openly and enthusiastically encourage black and indigenous artists to reach out to us with any questions about how to start in this industry. </p>
        <p>We would also like to recognize that while we are making positive strides towards our core values, inevitably there will still be areas where we have to learn and grow. We welcome and encourage positive communication from anyone wishing to help us be more informed and inclusive moving forward, and thank you for your patience, forgiveness and understanding if we unwittingly err.</p>
        <p>From all of us here at Good Friend Tattoo, to everyone helping to create a peaceful and inclusive space for all, thank you from the bottom of our hearts. &hearts; &hearts; &hearts; </p>
    </section>

    <section class="contact" id="contact-section">
        <h2>Connect with Good Friend Tattoo!</h2>
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
