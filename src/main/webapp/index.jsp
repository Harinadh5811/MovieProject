<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="images/favicon.png" type="image/x-icon">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap" rel="stylesheet">
    <style>
        
        body, h1, h2, p, ul, li {
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            overflow: hidden; 
        }

        

        ul {
            list-style: none;
            background-color: #333; 
            overflow: hidden;
            font-size: 16px;
        }

        ul li {
            float: left;
            margin-right: 20px;
        }

        ul li a {
            display: block;
            color: #fff; 
            text-align: center;
            text-decoration: none;
            padding: 14px 16px;
        }

        ul li a:hover {
            background-color: #555; 
            color: #ff6c00; 
        }
    </style>
</head>
<body style="background-image: url('images/b3.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed; background-color: rgba(0, 0, 0, 0.5);">
    <%@ include file="navbar.jsp" %>
</body>
</html>
