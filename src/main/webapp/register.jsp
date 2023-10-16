<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
    <title>Signup | Olympus</title>
    <link rel="stylesheet" type="text/css" href="css/Signup.css">
</head>
<body>
    <div class="form1">
        <div class="logo">
            <img src="img/logo.png" width="120px" height="100px" id="p1">
        </div>
        <p id="t2">Signup for continue</p><br>
        <div class="enter">
            <form method="post" action="reg">
                <label for="name" id="t1">Name</label><br><br>
                <input type="text" placeholder="Type here" name="name" id="tb1" required><br><br><br>
                <label for="pass" id="t1">Password</label><br><br>
                <input type="password" placeholder="Type here" name="pass" id="tb1" required><br><br><br>
                <label for="phone" id="t1">Phone</label><br><br>
                <input type="text" placeholder="Type here" name="phone" id="tb1" required><br><br><br>
                <label for="email" id="t1">Email</label><br><br>
                <input type="email" placeholder="Type here" name="email" id="tb1" required><br><br><br>
                <input type="submit" value="Register" id="btn1"><br><br>
            </form>
        </div>
        <p id="p1">Already registered? Click here to <a href="Login.jsp" id="link1">login</a></p>
    <br><br><br><br><br>
    </div>
</body>
</html>