<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Message</title>
    <style>
        /* Reset some default styles */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
        }

        /* Style for the message text */
        .font-blue {
            color: blue;
            font-size: 50px;
            font-weight: bold;
        }

        /* Style for the link */
        a {
            text-decoration: none;
            background-color: #0074D9;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        /* Style for the link on hover */
        a:hover {
            background-color: #0056b3;
        }

        /* Container styles */
        .container {
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            padding: 20px;
            border-radius: 10px;
            display: inline-block;
        }
    </style>
</head>
<body style="background-image: url('images/collabblog.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed; background-position: center; margin: 0; padding: 0; font-family: Arial, sans-serif; text-align: center;">
    <div class="container">
        <span class="font-blue">${message}</span><br><br>
        <a href="userlogin.jsp">LOG IN</a>
    </div>
</body>
</html>
