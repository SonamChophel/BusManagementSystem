<%-- 
    Document   : homepage
    Created on : 28 Mar, 2019, 2:59:01 PM
    Author     : Inspiron-3543
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Home Page</title>
        <link rel="stylesheet" type="text/css" href="css/navhp.css">
        <link rel="stylesheet" type="text/css" href="css/footer.css">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/animate.css">
    </head>

    <body>
        <div class="nav">
            <div class="sflogo">
                <img src="image/logo2.jpg">
            </div>

            <div class="container">
                <button class="btn">Home</button>
            </div>
            <div class="container">
                <button class="btn">Services</button>
                <div class="content">
                    <a href="" class="links">Link1</a>
                    <a href="" class="links">Link2</a>
                    <a href="" class="links">Link3</a>
                </div>
            </div>
            <div class="container">
                <a href="#ft"><button class="btn">Contact Us</button></a>
            </div>
            <div class="container">
                <button class="btn">About Us</button>
            </div>

            <div class="container">
                <a href="login.jsp"><button class="btn">Login</button></a>
            </div>
        </div>
        

        <section class="sec1">
            <div class="regbox">
                <p class="regpara animated lightSpeedIn">REGISTER HERE <i class="fa fa-angle-double-down" aria-hidden="true"></i></p>
                <a href="signup.jsp"><button class="regbtn animated zoomIn" >REGISTER</button></a>
            </div>
        </section>

        <section class="sec2">
        </section>

        <footer id="ft">
            <div class="info">
                <div class="calls animated bounce">
                    <i class="fa fa-phone" aria-hidden="true">&nbsp;&nbsp;&nbsp;&nbsp;CALL US</i> 
                    <p>Tel. 987-654-3210 | Fax: 123-456-7890 </p>
                </div>
                <div class="hrline1"></div>
                <div class="emails animated bounce">
                    <i class="fa fa-envelope-o" aria-hidden="true">&nbsp;&nbsp;&nbsp;&nbsp;EMAIL US</i>
                    <p>cuhp@chitkarauniversity.edu.in</p>
                </div>
                <div class="hrline2"></div>
                <div class="works animated bounce">
                    <i class="fa fa-clock-o" aria-hidden="true">&nbsp;&nbsp;&nbsp;&nbsp;WORKING HOURS</i>
                    <p>Mon-Sat: 6am - 6pm</p>
                </div>
            </div>
            <div style="clear: both;"></div>
            
            <div class="contacts">
                <div id="cont">
                    <h1 style="font-family:Carter One; color: white;">Contact Us</h1>
                    <p style="font-family: Carter One; color: white;">Contact us for more information</p>
                    
                    <form method="post" name="cf">
                        <input type="text"value="Name" name="name">
                        <input type="email" value="Email" name="email">
                        <input type="text" value="Subject" name="sub">
                        <input type="text" value="Message" name="message">
                        <input type="submit" value="Submit">    
                    </form>
                </div>
                <div class="hrline3"></div>
                <div id="datess">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3424.3454335201204!2d76.8701945146144!3d30.876996285717514!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390f8bcf4ce3b76b%3A0x21b1b0a655f62ff!2sChitkara+University+%2C+Baddi!5e0!3m2!1sen!2snl!4v1550514953962" width="550" height="415" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
            <div class="infor">
                <div class="info1  animated slideInLeft">
                    <h3>OVER 10 YEARS EXPERIENCE</h3>
                    <hr color="white" style="margin: -10px 0px 35px 0px;" height="2">
                    <p style="margin-top: -10px;">Welcome To Chitkara University Himachal Pradesh. Enjoy The Ride of Chitkara.</p>
                    <div class="icons">
                        <img src="image/fb.png">
                        <img src="image/tw.png">
                        <img src="image/yt.png">
                        <img src="image/ig.png">
                        <img src="image/gm.png">
                        <img src="image/pi.png">
                    </div>
                </div>
                <div class="info2  animated slideInLeft">
                    <h3>OUR SERVICES</h3>
                    <hr color="white" style="margin: -10px 0px 35px 0px;" height="2">
                    <p>-Providing Buses</p>
                    <p>-Providing Buses</p>
                    <p>-Providing Buses</p>
                    <p>-Providing Buses</p>
                    <p>-Providing Buses</p>
                </div>
                
                <div class="info3  animated slideInLeft">
                    <h3>VISIT US</h3>
                    <hr color="white" style="margin: -10px 0px 35px 0px;" height="2">
                    <p>Chitkara University</p>
                    <p>Barotiwala,Atal Nagar</p>
                    <p>Himachal Pradesh</p>
                </div>
            </div>
            <div id="copyright">
                <p id="p1">2019</p>
                <i class="fa fa-copyright" aria-hidden="true"></i>
                <p id="p2">Copyright - All Rights Reserved.</p>
            </div>
        </footer>
    </body>
</html>