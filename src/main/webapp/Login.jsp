<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
    <title>Login | Olympus</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
    <div class="form1">
        <div class="logo">
            <img src="img/logo.png" width="120px" height="100px" id="p1">
        </div>
        <p id="t2">Login for further processes</p><br>
        <div class="enter">
            <form method="post" action="login">
                <label for="name" id="t1">Username</label><br><br>
                <input type="text" placeholder="Type here" name="name" id="tb1" required><br><br><br>
                <label for="password" id="t1">Password</label><br><br>
                <input type="password" placeholder="Type here" name="pass" id="tb1" required><br><br><br>
                <input type="submit" value="Sign In" id="btn1"><br><br>
            </form>
        </div>
        <p id="p1">Not registered yet? Click here to <a href="register.jsp" id="link1">register</a></p>
    <br><br><br><br>
    </div>
</body>
</html>