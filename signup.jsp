<%-- 
    Document   : signup
    Created on : 28 Mar, 2019, 3:00:19 PM
    Author     : Inspiron-3543
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register</title>    
        <link rel="stylesheet" type="text/css" href="css/signup.css">

        <script type="text/javascript">  
            function matchpass()
            {     
                var fpwd=document.f1.pwd.value;  
                var spwd=document.f1.rpwd.value;  

                if(fpwd==spwd){  
                return true;  
                }     
                else{  
                    alert("Password must be same!");  
                return false;  
                }  
            }     
        </script>     
    </head>
    
    <body>
       
        <div class="forms">
            <img src="image/signup1.png" class="logodesign" width="100">
            <form action="SignUpServlet" method="post" name="f1" onsubmit="return matchpass()">
                <h1> Register </h1>
                <p>Username</p>
                <input type="text" name="nm" placeholder="Enter UserName"  required>
                <p>User ID</p>
                <input type="text" name="uid" placeholder="Enter UserId" required>
                <p>Email</p>
                <input type="email" name="mail" placeholder="Enter your Email" required>
                <p>Select Account Type</p>
                <select class="acctype" name="type">
                        <option value="student">Student</option>
                        <option value="faculty">Faculty</option>
                        <option value="staff">Staff</option>
                        <option value="admin">Admin</option>    
                    </select>
                <p>Password</p>
                <input type="password" name="pwd" placeholder="Set Password" pattern="(?=.*\d)(?=.*[a-z]).{8,}">
                <p>Re-Enter Password</p>
                <input type="password" name="rpwd" placeholder="Confirm Password" pattern="(?=.*\d)(?=.*[a-z]).{8,}"> 
                <input type="submit" name="submit" value="Sign Up" >
            </form>
        </div>

    </body>
</html>