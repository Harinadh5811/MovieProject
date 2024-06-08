<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<html>
<head>
 <link rel="icon" href="images/favicon.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap" rel="stylesheet">
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
    }
    .container {
    max-width: 400px;
    margin: 10px auto; 
    padding: 10px;
    background-color: #b08261; 
    border-radius: 50px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center; 
    margin-left: 1050px; 
    margin-top: 35px; 
    border: 3px solid #000000;
    
  }
    .form-group {
      margin-bottom: 10px;
    }
    .form-group label {
      font-weight: bold;
      color: #333332;
      border: 3px solid #000000;
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
      border: 2px solid #000000;
      border-radius: 5px;
      font-size: 16px;
    }
    .form-group input[type="radio"],
    .form-group input[type="radio"],
    .form-group input[type="radio"] {
      margin-right: 10px;
      border: 2px solid #000000;
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
    input[type="date"],
    input[type="email"],
    input[type="password"],
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
    .name3
        {
        	font-size: 20px;
    		font-weight: bold;
    		text-align: center;
    		background-color: #c8b2ff;
    		border-radius: 50px;
    		padding: 10px 15px;
    		text-decoration: none;
    		border: 1px solid #000000;
    		
    		gap:10px;
        }
        .name3:hover
        {
    		border-radius: 50px;
    		text-decoration: none;
    		
    		border: 1px solid #000000;
    		text-align: center;
        }
        
		.name2
        {
        	font-size: 15px;
    		font-weight: bold;
    		border: 3px solid #000000;
    		margin-bottom: 20px;
    		background-color: #61ff90;
    		border-radius: 50px;
    		margin-top: 20px;
    		width: 100%;
        }
    .button {
      background-color: #333332;
      color: #fff;
      padding: 12px 20px;
      border: none;
      border-radius: 50px;
      cursor: pointer;
      font-size: 18px;
    }
    .button:hover {
      background-color: #005eaa;
       border-radius: 50px;
    }
    
  </style>
</head>
<body style="background-image: url('images/b5.JPG'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed; background-color: rgba(0, 0, 0, 0.3);">

  <%@ include file="navbar.jsp" %>

  <div class="container">
  <div class="name2">
    <h3 align="center">SIGN UP</h3>
    </div>
    <form method="post" action="insertuser" >
      <table align="center">
        <tr>
          <td><label>Name</label></td>
          <td><input type="text" name="name" required="required" class="form-group" /></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
  <td><label>Gender</label></td>
  <td>
    <select name="gender" class="form-group gender" required>
      <option value="Select gender" disabled selected>Select gender</option>
      <option value="MALE">Male</option>
      <option value="FEMALE">Female</option>
    </select>
  </td>
</tr>


        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td><label>Date of Birth</label></td>
          <td><input type="date" name="dob" required="required" class="form-group" /></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td><label>Email ID</label></td>
          <td><input type="email" name="email" required class="form-group" /></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td><label>Password</label></td>
          <td><input type="password" name="pwd" required class="form-group" /></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td><label>Location</label></td>
          <td><input type="text" name="location" required class="form-group" /></td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr>
          <td><label>Contact No</label></td>
          <td>
            <input type="text" name="contact" pattern="[789][0-9]{9}" placeholder="Must be 10 digits" required class="form-group" />
          </td>
        </tr>
        <tr>
          <td></td>
        </tr>
        <tr align="center">
          <td colspan="2"><input type="submit" value="REGISTER" class="form-group button" style="background-color: #333;"></td>
        </tr>
      </table>
	<h3 class="message">${message}</h3>
      <br>
      <a href="/userlogin" class="name3">LOGIN</a>
    </form>
  </div>
</body>
</html>
