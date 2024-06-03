<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link rel="icon" href="images/favicon.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap" rel="stylesheet">
    <style>
       
        body, h1, h2, p, ul, li {
            margin: 0;
            padding: 0;
        }
         .name
        {
        	font-size: 25px;
    		font-weight: bold;
    		margin-bottom: 20px;
    		background-color: skyblue;
    		border-radius: 0px;
    		margin-top: 20px;
    		border: 3px solid #000000;
        }
       
		.name2
        {
        	font-size: 15px;
    		font-weight: bold;
    		border: 3px solid #000000;
    		margin-bottom: 20px;
    		background-color: #FF5580;
    		border-radius: 10px;
    		margin-top: 20px;
    		width: 100%;
        }
        .name3
        {
        	font-size: 20px;
    		font-weight: bold;
    		text-align: center;
    		background-color: #c8b2ff;
    		border-radius: 50px;
    		padding: 10px 15px;
    		text-decoration: none;
    		margin-left: 130px;
    		border: 1px solid #000000;
    		width: 92%;
    		margin-top: 30px;
        }
        .name3:hover
        {
    		border-radius: 50px;
    		text-decoration: none;
    		width: 68%;
    		margin-left: 130px;
    		border: 1px solid #000000;
    		text-align: center;
    		gap:20px;
        }
        body {
            font-family: 'Poppins', sans-serif; 
            background: #333;
            color: #fff;
        }

        .blog-title h1 {
            font-family: 'Bauhaus 93', sans-serif;
            font-size: 36px;
            color: #333332;
            text-align: center;
            margin-top: 2rem;
        }

        .blog-title:hover h1 {
            color: #0000;
        }

        .container {
            max-width: 400px; 
            margin: 20px auto 0;
            padding: 20px;
            background-color: #E0FBE2;
            border-radius: 50px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top:50px;
            margin-right: 1000px;
            border: 3px solid #000000;
        }
        .container1 {
            width: 90%;
            margin: 20px auto 0;
            padding: 20px;
           background-color: #333;
            border-radius: 50px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
           
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333332; 
        }

        .form-group input {
            width: 95%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 50px;
            text-align: center;
            border: 2px solid #000000;
        }

        .form-group .button {
            background-color: #197d7d;
            color: #fff;
            padding: 12px 20px; 
            border: none;
            border-radius: 50px;
            cursor: pointer;
            width: 100%;
        }

        .form-group .button:hover {
            background-color: #333332;
        }

        .message {
            text-align: center;
            color: #333332;
            font-weight: bold;
        }

        a {
            text-decoration: none;
            color: #fe4f02; 
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body style="background-image: url('images/b3.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed; background-color: rgba(0, 0, 0, 0.5);">
    <%@ include file="navbar.jsp" %>
   <div class="name">
    <h3 align="center">Movies App</h3>
    </div>
    <div class="container">
        <h3 class="message">${message}</h3>
        <div class="name2">
    <h3 align="center">USER LOGIN</h3>
    </div>
        <form method="post" action="checkuserlogin">
            <div class="form-group">
                <label for="email">Email ID</label>
                <input type="email" name="email" id="email" required>
            </div>
            <div class="form-group">
                <label for="pwd">Password</label>
                <input type="password" name="pwd" id="pwd" required>
            </div>
            <div class="form-group">
                <input type="submit" value="LOGIN" class="button">
            </div>
        </form>
        
           <a href="userreg" class="name3">SIGN UP..!</a>
        
    </div>
</body>
</html>
