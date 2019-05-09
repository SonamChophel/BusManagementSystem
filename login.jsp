<%-- 
    Document   : login
    Created on : 28 Mar, 2019, 2:59:28 PM
    Author     : Inspiron-3543
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Page</title>
        <link rel="stylesheet" type="text/css" href="css/login.css">
    </head>
    <body>
        
        <div class="logobody">
	    <img src="image/login.png" class="logodesign">
        <form name="Form1" action="LoginServlet" method="post"> 
            <h1> Sign In </h1>
            <p> Username </p>    
            <input type="text" name="nm" placeholder="Enter your UserName">
            <p>User ID</p>
            <input type="text" name="uid" placeholder="Enter your User ID">
            <p> Password </p>
            <input type="password" name="pwd" placeholder="Enter your Password"> <!--pattern="(?=.*\d)(?=.*[a-z]).{8,}"-->
            <p> Account Type </p>
            <select class="acctype" name="type">
                <option value="student">Student</option>
                <option value="faculty">Faculty</option>
                <option value="staff">Staff</option>
                <option value="admin">Admin</option>
            </select>
            <input type="submit" name="sb" value="Login">
            <a href="">Forgot Password?</a>
            <p class="para">New To Bus Management?</p>
            <button formaction="signup.jsp">Sign Up</button>
        </form>
            
	</div>
    </body>
</html>