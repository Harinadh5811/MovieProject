<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
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
        .name {
            font-size: 25px;
            font-weight: bold;
            border: 3px solid #000000;
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
            background-color: #FFFDB5;
            box-shadow: 10px 10px 80px rgba(0, 0, 0, 0.1);
            text-align: center;
            border-radius: 30px;
        }
        .form-group select {
            width: calc(100% - 24px); 
            padding: 12px; 
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
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
    </style>
</head>
<body style="background-image: url('images/b6.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed; background-color: rgba(0, 0, 0, 0.3);">
    <%@ include file="UpdatedNavBar.jsp" %>
    <div class="name">
        <h3 align="center">ADD TO PLAYLIST</h3>
    </div>
    <div class="container">
        <form method="post" action="addtoplaylist">
            <div name="play">
                <table align="center">
                    <tr>
                    <td><label>Select Playlist  </label></td>
                    <td>
                        <select name="pid" class="form-group type" required>
                            <option value="" disabled selected>Select Your Playlist</option>
    <c:forEach items="${allplaylist}" var="playlist">
        <c:if test="${playlist.id == uid}">
            <option value="${playlist.pid}">${playlist.pname}</option>
        </c:if>
    </c:forEach>
                            
                        </select>
                    </td>
                </tr>
                    <tr>
                        <td><input type="text" name="id" hidden="true" required="required" value="${mid}" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="ADD" class="form-group button" style="background-color: #333;"></td>
                    </tr>
                </table>
            </div>
        </form>
        
    </div>
</body>
</html>
