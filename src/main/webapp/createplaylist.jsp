<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<html>
<head>
    <link rel="icon" href="images/favicon.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .name
        {
        	font-size: 25px;
    		font-weight: bold;
    		border: 3px solid #000000;
    		margin-bottom: 20px;
    		background-color: skyblue;
    		border-radius: 20px;
    		margin-top: 20px;
        }
        .name2
        {
        	font-size: 15px;
    		font-weight: bold;
    		border: 2px solid #000000;
    		margin-bottom: 20px;
    		background-color: 5C88C4;
    		border-radius: 10px;
    		margin-top: 10px;
    		width:100%;
        }
        .play
        {
        	font-size: 205px;
    		font-weight: bold;
    		border: 1px solid #bbdefb;
    		margin-bottom: 20px;
    		background-color: skyblue;
    		border-radius: 20px;
    		margin-top: 20px;
        }
        .container {
            max-width: 250px;
            margin: 20px auto;
            padding: 53px;
            border: 3px solid #000000;
            background-color: FFFDB5;
            box-shadow: 10px 10px 80px rgba(0, 0, 0, 0.1);
            text-align: center;
            border-radius: 30px;
            
        }
        .form-group {
            margin-bottom: 10px;
             max-width: 500px;
        }
        .form-group label {
            font-weight: bold;
            color: #333332;
            width: 100%;
        }
        .form-group input[type="text"],
        .form-group input[type="date"],
        .form-group input[type="email"],
        .form-group input[type="password"],
        .form-group input[type="radio"],
        .form-group input[type="text"],
        .form-group input[type="radio"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 50px;
        }
        .form-group input[type="radio"],
        .form-group input[type="radio"],
        .form-group input[type="radio"] {
            margin-right: 10px;
            width: 100%;
        }
        .form-group .button {
            background-color: #333332;
            color: #fff;
            padding: 15px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
        }
        .form-group .button:hover {
            background-color: #005eaa;
        }
        .message {
            text-align: center;
            color: red;
            font-weight: bold;
        }
        a {
            text-decoration: none;
            color: #0078d4;
        }
        a:hover {
            text-decoration: underline;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #333;
        }
        input[type="text"],
        input[type="radio"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            margin-bottom: 10px;
        }
        input[type="radio"] {
            margin-right: 5px;
        }
        .button {
            background-color: c42f5e;
            color: #ffadaf;
            padding: 12px 20px;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            font-size: 18px;
            margin-top: 20px;
        }
        .button:hover {
            background-color: c42f5e;
            border-radius: 50px;
        }
        
        .form-group select {
            width: calc(100% - 24px); 
            padding: 12px; 
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
    </style>
</head>
<body style="background-image: url('images/b6.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed; background-color: rgba(0, 0, 0, 0.3);">
    <%@ include file="UpdatedNavBar.jsp" %>
    <div class="name">
    <h3 align="center">CREATE PLAYLIST</h3>
    </div>
    <div class="container">
        <form method="post" action="insertplaylist">
        <div name="play">
            <table align="center">
                <tr>
                    <td><input type="text" name="id" hidden="true" required="required" value="${uid}" /></td>
                </tr>
                <tr>
                    <td><label>Name </label></td>
                    <td><input type="text" name="pname" required="required" class="form-group" /></td>
                </tr>
                <tr>
                    <td><label>Type  </label></td>
                    <td>
                        <select name="ptype" class="form-group type" required>
                            <option value="" disabled selected>Select Playlist Type</option>
                            <option value="PUBLIC">Visible to all</option>
                            <option value="PRIVATE">Private just for me</option>
                        </select>
                    </td>
                </tr>
                <tr>
                
                    <td colspan="2" align="center"><input type="submit" value="Create" class="form-group button" style="background-color: #333;"></td>
                </tr>
            </table>
            </div>
        </form>
        <h3 class="message">${message}</h3>
        <c:if test="${message == 'Playlist Created'}">
            <h3 align="center"><a href="viewmyplaylist">View Here</a></h3>
        </c:if>
    </div>
</body>
</html>
