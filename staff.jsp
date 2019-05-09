<html>
    <head>
        <title>Staff FrontPage</title>
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="css/staffs.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="css/staffcss.css">
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"></script>
    </head>
    <body>
        <div class="snav">
            <div id="adminlogo">
                <i class="fa fa-users" aria-hidden="true"></i>
                <p>STAFF</p>
            </div>
            <div class="logout">
                <a href="homepage.jsp"><i class="fa fa-indent" aria-hidden="true"></i></a>
            </div>
        </div>
    
    <div class="board1">
        <div class="board2">
            <div class="sidebar1">
                <div class="btn1" id="profile" onclick="displayPanel(0)">
                    <img src="image/login.png">
                    <p>STAFF</p>
                </div>
                <div class="btn1" id="db" onclick="displayPanel(1)">
                    <i class="fa fa-desktop" aria-hidden="true"></i>
                    <p>DASHBOARD</p>
                </div>
                <div class="btn1" id="drivers" onclick="displayPanel(2)">
                    <i class="fa fa-id-card-o" aria-hidden="true"></i>
                    <p>DRIVER INFORMATION</p>
                </div>
                <div class="btn1" id="buses" onclick="displayPanel(3)">
                    <i class="fa fa-bus" aria-hidden="true"></i>
                    <p>BUSES INFORMATION</p>
                </div>
                
                <div class="btn1" id="std" onclick="displayPanel(4)">
                    <i class="fa fa-users" aria-hidden="true"></i>
                    <p>STUDENT INFORMATION</p>
                </div>
                <div class="btn1" id="fal" onclick="displayPanel(5)">
                    <i class="fa fa-users" aria-hidden="true"></i>
                    <p>FACULTY INFORMATION</p>
                </div>
            </div>
            
<!--            Staff Info-->
             <div class="sidebar2">
                 <div class="mymain">
                     <div id="vStaffData">
                         <p>
                             <% String str = (String)request.getSession().getAttribute("uname");%>
                             User Name : <%=str%>
                         </p>
                         <p>
                             <% String id = (String)request.getSession().getAttribute("uid");%>
                             User ID : <%=id%>
                         </p>
                         <p>
                             <% String mail = (String)request.getSession().getAttribute("mail");%>
                             User E-mail : <%=mail%>
                         </p>
                         <p>
                             <% String acctype = (String)request.getSession().getAttribute("type");%>
                             Account Type : <%=acctype%>
                         </p><br>
                     </div>
                 </div>
            </div>   
            
<!--            DashBoard-->
            <div class="sidebar2">        
                <div class="minibar">
                    <div class="btn" onclick="showPanel(0)">
                        <p>CREATE DATA</p>
                        <hr color="white" width="90%">
                        <i class="fa fa-plus-square-o" aria-hidden="true"></i>
                    </div>
                    <div class="btn" onclick="showPanel(1)">
                        <p>EDIT DATA</p>
                        <hr color="white" width="90%">
                        <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                    </div>
                    <div class="btn" onclick="showPanel(2)">
                        <p>DELETE DATA</p>
                        <hr color="white" width="90%">
                        <i class="fa fa-trash-o" aria-hidden="true"></i>
                    </div>
                    
                </div>
                
<!--                Addition Information-->
                <div class="mainbar">
                    <div id="addDri">
                        <form action="AddBusSchedule" method="post">
                            Bus Id :
                            <input type="text" name="bid" placeholder="Enter Bus ID"><br>
                            Bus Number :
                            <input type="text" name="bno" placeholder="Enter Bus Number"><br>
                            Driver Name : 
                            <input type="text" name="drinm" placeholder="Enter Driver Name"><br>
                            Driver Id :
                            <input type="text" name="driid" placeholder="Enter Driver Id"><br>
                            Bus Route : 
                            <input type="text" name="brt" placeholder="Enter Bus Route"><br>
                            Bus Shift :
                            <input type="text" name="bshft" placeholder="Enter Bus Shift"><br>
                            Arrival Time :
                            <input type="text" name="arrt" placeholder="Enter Arrival Time"><br>
                            Departure Time :
                            <input type="text" name="dept" placeholder="Enter Departure Time"><br>
                            Driver Contact: 
                            <input type="text" name="pno" placeholder="Phone Number"><br>
                            Email :
                            <input type="email" name="eml" placeholder="Email"><br>
                            <input type="submit" name="sb" value="ADD">
                        </form>
                    </div>
                </div>
                  
<!--                Updation Information-->
                <div class="mainbar">
                    <div id="upDri">
                        <form action="EditBusSchedule" method="post">
                            Bus Id :
                            <input type="text" name="bid" placeholder="Enter Bus ID"><br>
                            Bus Number :
                            <input type="text" name="bno" placeholder="Enter Bus Number"><br>
                            Driver Name : 
                            <input type="text" name="drinm" placeholder="Enter Driver Name"><br>
                            Driver Id :
                            <input type="text" name="driid" placeholder="Enter Driver Id"><br>
                            Bus Route : 
                            <input type="text" name="brt" placeholder="Enter Bus Route"><br>
                            Bus Shift :
                            <input type="text" name="bshft" placeholder="Enter Bus Shift"><br>
                            Arrival Time :
                            <input type="text" name="arrt" placeholder="Enter Arrival Time"><br>
                            Departure Time :
                            <input type="text" name="dept" placeholder="Enter Departure Time"><br>
                            Driver Contact: 
                            <input type="text" name="pno" placeholder="Phone Number"><br>
                            Email :
                            <input type="email" name="eml" placeholder="Email"><br>
                            <input type="submit" name="sb" value="UPDATE">
                        </form>
                    </div>
                </div>
                
                
<!--            Deletion Information-->
                <div class="mainbar">
                    <div id="delDri">
                        <form action="DeleteBusSchedule" method="post">
                            Bus ID :<br>
                            <input type="text" name="bid" placeholder="Enter Bus Id"><br>
                            <input type="submit" value="Delete">
                        </form>
                    </div>
                </div>
            </div>
            
<!--            Driver Info-->
            <div class="sidebar2">
                <div class="mymain">
                    <div class="showDri">
                        <div class="driBtn" id="vd" onclick="showDriInfo(0,'#AAA4A4')"><p>View All Drivers</p></div>
                        <div class="driBtn" id="sd" onclick="showDriInfo(1,'#1C4F6E')"><p>Search Driver</p></div>
                    </div>
                    <div class="displayDriPanel">
                        <div class="disAllDri">
                            <button onclick="vAllDriBtn()">Click Here To View All </button>
                        </div>
                        <div id="vAllDri">
                        </div>
                    </div>
                    <div class="displayDriPanel">
                        <div class="disDri">
                            <form name="dform">
                                <input type="text" name="did" placeholder="Enter Driver ID" onkeyup="sendDriInfo()">
                            </form>
                        </div>
                        <div id="shDrivers"></div>
                    </div>
                </div>
            </div>
            
<!--            Bus Info-->
            <div class="sidebar2">
                <div class="mymain">
                    <div class="showBus">
                        <div class="BusBtn" id="vb" onclick="showBusInfo(0,'#AAA4A4')"><p>View All Buses</p></div>
                        <div class="BusBtn" id="sb" onclick="showBusInfo(1,'#1C4F6E')"><p>Search Bus</p></div>
                    </div>
                    
                    <div class="displayBusPanel">
                        <div class="disAllDri">
                            <button onclick="vAllBusBtn()">Click Here To View All </button>
                        </div>
                        <div id="vAllBus">
                        </div>
                    </div>
                    
                    <div class="displayBusPanel">
                        <div class="disDri">
                            <form name="bform">
                                <input type="text" name="bid" placeholder="Enter Bus ID" onkeyup="sendBusInfo()">
                            </form>
                        </div>
                        <div id="shBuses"></div>
                    </div>
                </div>
            </div>
           
       
            
<!--            Student Info-->
            <div class="sidebar2">
                <div class="mymain">
                    <div class="showStd">
                        <div class="StdBtn" id="vstd" onclick="showStdInfo(0,'#AAA4A4')"><p>View All Students</p></div>
                        <div class="StdBtn" id="sstd" onclick="showStdInfo(1,'#1C4F6E')"><p>Search Student</p></div>
                    </div>
                    
                    <div class="displayStdPanel">
                        <div class="disAllDri">
                            <button onclick="vAllStdBtn()">Click Here To View All </button>
                        </div>
                        <div id="vAllStd">
                        </div>
                    </div>
                    
                    <div class="displayStdPanel">
                        <div class="disDri">
                            <form name="stdform">
                                <input type="text" name="stdid" placeholder="Enter Student ID" onkeyup="sendStdInfo()">
                            </form>
                        </div>
                        <div id="shStudents"></div>
                    </div>
                </div>
            </div>
                
                
<!--            Faculty Info-->
            <div class="sidebar2">
                <div class="mymain">
                    <div class="showFal">
                        <div class="FalBtn" id="vfal" onclick="showFalInfo(0,'#AAA4A4')"><p>View All Faculties</p></div>
                        <div class="FalBtn" id="sfal" onclick="showFalInfo(1,'#1C4F6E')"><p>Search Faculty</p></div>
                    </div>
                    
                    <div class="displayFalPanel">
                        <div class="disAllDri">
                            <button onclick="vAllFalBtn()">Click Here To View All </button>
                        </div>
                        <div id="vAllFal">
                        </div>    
                    </div>
                    
                    <div class="displayFalPanel">
                        <div class="disDri">
                            <form name="fform">
                                <input type="text" name="fid" placeholder="Enter Faculty ID" onkeyup="sendFalInfo()">
                            </form>
                        </div>
                        <div id="shFaculties"></div>
                    </div>
                </div>
            </div>
                
        <script>
            var req = new XMLHttpRequest();
            
            //view all driver
            function vAllDriBtn()
            {   
                var url="viewAllDri.jsp"; 

                try  
                {  
                    req.onreadystatechange=getAllDriInfo;  
                    req.open("GET",url,true);  
                    req.send();  
                }  
                catch(e)  
                {  
                alert("Unable to connect to server");  
                }  
            }  

            function getAllDriInfo(){  
            if(req.readyState==4){  
            var val=req.responseText;  
            document.getElementById('vAllDri').innerHTML=val;  
            }  
            }
            //search driver
            function sendDriInfo()  
            {  
                var v=document.dform.did.value;  
                var url="searchDri.jsp?x="+v; 

                try  
                {  
                    req.onreadystatechange=getDriInfo;  
                    req.open("GET",url,true);  
                    req.send();  
                }  
                catch(e)  
                {  
                alert("Unable to connect to server");  
                }  
            }  

            function getDriInfo(){  
            if(req.readyState==4){  
            var val=req.responseText;  
            document.getElementById('shDrivers').innerHTML=val;  
            }  
            }


            //view all bus
            function vAllBusBtn()
            {   
                var url="viewAllBus.jsp"; 

                try  
                {  
                    req.onreadystatechange=getAllBusInfo;  
                    req.open("GET",url,true);  
                    req.send();  
                }  
                catch(e)  
                {  
                alert("Unable to connect to server");  
                }  
            }  

            function getAllBusInfo(){  
            if(req.readyState==4){  
            var val=req.responseText;  
            document.getElementById('vAllBus').innerHTML=val;  
            }  
            }
            //search Bus
            function sendBusInfo()  
            {  
                var v=document.bform.bid.value;  
                var url="searchBus.jsp?x="+v; 

                try  
                {  
                    req.onreadystatechange=getBusInfo;  
                    req.open("GET",url,true);  
                    req.send();  
                }  
                catch(e)  
                {  
                alert("Unable to connect to server");  
                }  
            }  

            function getBusInfo(){  
            if(req.readyState==4){  
            var val=req.responseText;  
            document.getElementById('shBuses').innerHTML=val;  
            }  
            }  

            //view all route
            function vAllRtBtn()
            {   
                var url="viewAllRoute.jsp"; 

                try  
                {  
                    req.onreadystatechange=getAllRtInfo;  
                    req.open("GET",url,true);  
                    req.send();  
                }  
                catch(e)  
                {  
                alert("Unable to connect to server");  
                }  
            }  

            function getAllRtInfo(){  
            if(req.readyState==4){  
            var val=req.responseText;  
            document.getElementById('vAllRoute').innerHTML=val;  
            }  
            }
            
            //search route
            function sendRouteInfo()  
            {  
                var v=document.rform.rid.value;  
                var url="searchRoute.jsp?x="+v; 

                try  
                {  
                    req.onreadystatechange=getRouteInfo;  
                    req.open("GET",url,true);  
                    req.send();  
                }  
                catch(e)  
                {  
                alert("Unable to connect to server");  
                }  
            }  

            function getRouteInfo(){  
            if(req.readyState==4){  
            var val=req.responseText;  
            document.getElementById('shRoutes').innerHTML=val;  
            }  
            }

            //view all student
            function vAllStdBtn()
            {   
                var url="viewAllStd.jsp"; 

                try  
                {  
                    req.onreadystatechange=getAllStdInfo;  
                    req.open("GET",url,true);  
                    req.send();  
                }  
                catch(e)  
                {  
                alert("Unable to connect to server");  
                }  
            }  

            function getAllStdInfo(){  
            if(req.readyState==4){  
            var val=req.responseText;  
            document.getElementById('vAllStd').innerHTML=val;  
            }  
            }
            
            //search student
            function sendStdInfo()  
            {  
                var v=document.stdform.stdid.value;  
                var url="searchStd.jsp?x="+v; 

                try  
                {  
                    req.onreadystatechange=getStdInfo;  
                    req.open("GET",url,true);  
                    req.send();  
                }  
                catch(e)  
                {  
                alert("Unable to connect to server");  
                }  
            }  

            function getStdInfo(){  
            if(req.readyState==4){  
            var val=req.responseText;  
            document.getElementById('shStudents').innerHTML=val;  
            }  
            }

//            view all faculty
            function vAllFalBtn()
            {   
                var url="viewAllFal.jsp"; 

                try  
                {  
                    req.onreadystatechange=getAllFalInfo;  
                    req.open("GET",url,true);  
                    req.send();  
                }  
                catch(e)  
                {  
                alert("Unable to connect to server");  
                }  
            }  

            function getAllFalInfo(){  
            if(req.readyState==4){  
            var val=req.responseText;  
            document.getElementById('vAllFal').innerHTML=val;  
            }  
            }
            
            //search faculty
            function sendFalInfo()  
            {  
                var v=document.fform.fid.value;  
                var url="searchFal.jsp?x="+v; 

                try  
                {  
                    req.onreadystatechange=getFalInfo;  
                    req.open("GET",url,true);  
                    req.send();  
                }  
                catch(e)  
                {  
                alert("Unable to connect to server");  
                }  
            }  

            function getFalInfo(){  
            if(req.readyState==4){  
            var val=req.responseText;  
            document.getElementById('shFaculties').innerHTML=val;  
            }  
            }
        </script>
        
        </div>
    </div>
    <div style="clear: both;"></div>
    <script src="js/new.js"></script>
</body>
</html>