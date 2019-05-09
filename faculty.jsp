<html>
    <head>
        <title>Faculty FrontPage</title>
        <link rel="stylesheet" type="text/css" href="css/nav.css">
        <link rel="stylesheet" type="text/css" href="css/animate.css"> 
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/student.css">
        <link rel="stylesheet" type="text/css" href="css/footer.css">
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"></script>
    </head>
    
    <body>
    
        <div class="nav animated bounce">
            
            <div class="sflogo">
                <img src="image/logo2.jpg">
            </div>
            
            
            <div class="container">
                <button class="btn">Home</button>
            </div>
            <div class="container">
                <button class="btn">Fee Structure</button>
                <div class="content">
                    <a href="" class="links">Link1</a>
                    <a href="" class="links">Link2</a>
                    <a href="" class="links">Link3</a>
                </div>
            </div>
            <div class="container">
                <a href="#sec2"><button class="btn">Search Bus</button></a>
            </div>
            <div class="container">
                <a href="homepage.jsp"><button class="btn">Logout</button></a>
            </div>
        </div>
        
        
        <section class="section1">
            <div class="notice">
                <i class="fa fa-id-card-o" aria-hidden="true"><p class="nt">Notice</p></i>
                <hr size="3px" color="white" style="margin-top: -30px;">
            </div>
            <div class="alerts">
                <i class="fa fa-exclamation-circle" aria-hidden="true"><p class="nt">Alerts</p></i>
                <hr size="3px" color="white" style="margin-top: -30px;">
            </div>
            <div class="fine">
                <i class="fa fa-credit-card-alt" aria-hidden="true"><p class="nt">Fine</p></i>
                <hr size="3px" color="white" style="margin-top: -30px;">
            </div>
            <div class="calen">
                <i class="fa fa-calendar" aria-hidden="true"><p class="nt">Calender</p></i>
                <hr size="3px" color="white" style="margin-top: -30px;">
                <iframe src="https://calendar.google.com/calendar/embed?src=q9cmluecbdndilbd4sgj5ujrjg%40group.calendar.google.com&ctz=Asia%2FThimphu" style="border: 0; padding: 20px;" width="350" height="350" frameborder="0" ></iframe>
            </div>
        </section> 
        <section class="section2" id="sec2">
            <div class="showbus">
                <button onclick="showbusdata(0,'#5578AB')">Show All Bus</button>
                <button onclick="showbusdata(1,'#1C4F6E')">Search Bus By Bus ID</button>
                <button onclick="showbusdata(2,'#5578AB')">Search Bus By Bus Number</button>
            </div>
            
            <div class="buspanel">
                 <div class="vAllBus">
                     <button onclick="vAllBusBtns()">Click Here To View All </button>
                        </div>
                <div id="vAllBusDiv"></div>            
            </div>
            
            <div class="buspanel">
                <div class="SBusId">
                    <form name="sbbid">
                        <input type="text" name="bid" placeholder="Enter Bus ID" onkeyup="sendBidInfo()">
                    </form>
                </div>
                <div id="SBusIdDiv"></div>
            </div>
            
            <div class="buspanel">
                <div class="SBusNo">
                    <form name="sbbno">
                        <input type="text" name="bno" placeholder="Enter Bus Number" onkeyup="sendBnoInfo()">
                    </form>
                </div>
                <div id="SBusNoDiv"></div>
            </div>
            <script>
                var req = new XMLHttpRequest();
                function vAllBusBtns()
                {   
                    var url="viewAllBusSch.jsp"; 

                    try  
                    {  
                        req.onreadystatechange=getBusSchInfo;  
                        req.open("GET",url,true);  
                        req.send();  
                    }  
                    catch(e)  
                    {  
                    alert("Unable to connect to server");  
                    }  
                }  

                function getBusSchInfo(){  
                if(req.readyState==4){  
                var val=req.responseText;  
                document.getElementById('vAllBusDiv').innerHTML=val;  
                }  
                }
                
                //search by bus id
                function sendBidInfo()  
                {  
                    var v=document.sbbid.bid.value;  
                    var url="sBusId.jsp?x="+v; 

                    try  
                    {  
                        req.onreadystatechange=getBidInfo;  
                        req.open("GET",url,true);  
                        req.send();  
                    }  
                    catch(e)  
                    {  
                    alert("Unable to connect to server");  
                    }  
                }  

                function getBidInfo(){  
                if(req.readyState==4){  
                var val=req.responseText;  
                document.getElementById('SBusIdDiv').innerHTML=val;  
                }  
                }
                    
                function sendBnoInfo()  
                {  
                    var v=document.sbbno.bno.value;  
                    var url="sBusNo.jsp?x="+v; 

                    try  
                    {  
                        req.onreadystatechange=getBnoInfo;  
                        req.open("GET",url,true);  
                        req.send();  
                    }  
                    catch(e)  
                    {  
                    alert("Unable to connect to server");  
                    }  
                }  

                function getBnoInfo(){  
                if(req.readyState==4){  
                var val=req.responseText;  
                document.getElementById('SBusNoDiv').innerHTML=val;  
                }  
                }    
                
                $(function(){
                $('#vAllBusBtns').click(function(){
                    if('#iframe'.length)
                    {
                        $('#vAllBusDiv').html('<iframe id="iframe" src="<%=request.getContextPath()%>/viewBusServlet" frameborder="0" height="1000px" width="100%" scrolling="auto" align="middle"></iframe>');
                    }
                });
                });
            </script>
            <script src="js/busjs.js"></script>
        </section>
        
        
        
        <footer>
            <div class="info">
                <div class="calls">
                    <i class="fa fa-phone" aria-hidden="true">&nbsp;&nbsp;&nbsp;&nbsp;CALL US</i> 
                    <p>Tel. 987-654-3210 | Fax: 123-456-7890 </p>
                </div>
                <div class="hrline1"></div>
                <div class="emails">
                    <i class="fa fa-envelope-o" aria-hidden="true">&nbsp;&nbsp;&nbsp;&nbsp;EMAIL US</i>
                    <p>cuhp@chitkarauniversity.edu.in</p>
                </div>
                <div class="hrline2"></div>
                <div class="works">
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
                <div class="info1 animated swing">
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
                <div class="info2 animated swing">
                    <h3>OUR SERVICES</h3>
                    <hr color="white" style="margin: -10px 0px 35px 0px;" height="2">
                    <p>-Providing Buses</p>
                    <p>-Providing Buses</p>
                    <p>-Providing Buses</p>
                    <p>-Providing Buses</p>
                    <p>-Providing Buses</p>
                </div>
                
                <div class="info3 animated swing">
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