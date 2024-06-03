<!DOCTYPE html>
<html>
<head>
  <link type="text/css" rel="stylesheet" href="css/style.css">
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }

    .navbar {
      background-color: #333;
      overflow: hidden;
      font-size: 16px;
      display: flex; 
      justify-content: space-between; 
    }

    .navbar a {
      color: #fff;
      text-align: center;
      padding: 10px 16px;
      text-decoration: none;
    }

    .navbar a:hover {
      color: #1da10e;
    }

    .navbar .logout-link {
      color: #fff; 
    }
  </style>
  <title>Movies App</title>
</head>
<body>
  <div class="navbar">
    <a href="userhome">Home</a> 
    <a href="findmovies.jsp">Find Movies</a> 
    <a href='<c:url value="createplaylist?id=${uid}"/>'> Create Playlist</a> 
    <a href='<c:url value="viewmyplaylist?id=${uid}"/>'> My Playlist</a>
    <a href="viewallplaylist">All Playlist</a> 
    <a href="userlogin" class="logout-link">Logout</a>
  </div>

  </body>
</html>
