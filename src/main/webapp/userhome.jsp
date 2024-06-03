<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <link type="text/css" rel="stylesheet" href="css/style.css">
  <link href="https://fonts.googleapis.com/css2?family=Poiret+One&display=swap" rel="stylesheet">
  <link rel="icon" href="images/favicon.png" type="image/x-icon">
  <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300;400;500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <style>
    .container {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .message {
      text-align: center;
      color: #e74c3c;
      font-weight: bold;
      margin-top: 20px;
    }

    a {
      text-decoration: none;
      color: #3498db;
    }

    a:hover {
      text-decoration: underline;
    }

    .get-started-container {
      text-transform: uppercase;
      padding-top: 200px;
      margin-top: 10px;
      margin-left: 650px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      
    }

    .c3 {
      display: inline-block;
      background: #3498db;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 100px;
      margin: 10px;
      text-decoration: none;
      font-weight: bold;
      font-size: 16px;
      display: block;
      margin-bottom: 10px;
      height: 50px;
      width: 200px;
    }
  </style>
</head>
<body style="background-image: url('images/b2.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed; background-color: rgba(0, 0, 0, 0.3);">

  <%@ include file="UpdatedNavBar.jsp" %>

  <div class="container">
    <div class="get-started-container">
      <a href="findmovies.jsp">
        <button class="c3">Find Movies</button>
      </a>
      <a href='<c:url value="createplaylist?id=${uid}"></c:url>'>
        <button class="c3">Create Playlist</button>
      </a>
      <a href='<c:url value="viewmyplaylist?id=${uid}"></c:url>'>
        <button class="c3">View My Playlist</button>
      </a>
      <a href='<c:url value="viewallplaylist"></c:url>'>
        <button class="c3">View All Playlist</button>
      </a>
     
      </a>
    </div>
  </div>

</body>
</html>
