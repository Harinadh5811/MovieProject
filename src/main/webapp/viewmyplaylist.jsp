<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <style>
        .blog-card-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            
        }
        .name
        {
        	font-size: 25px;
    		font-weight: bold;
    		border: 3px solid #000000;
    		margin-bottom: 20px;
    		background-color: skyblue;
    		border-radius: 20px;
        }
        .view
        {
        	
    		
    		
        }
        .blog-card {
            border: 2px solid #000000;
            
            padding: 1px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
            cursor: pointer;
            border-radius: 50px;
            width: 80%; 
            position: relative;
            margin-bottom: 20px;
        }
        .blog-card:hover {
            transform: scale(1.01);
        }
        
        .blog-details {
            display: flex;
            justify-content: flex-end; 
            align-items: center; 
            padding: 10px;
            border-radius: 30px;
        }
        .blog-title {
    font-size: 36px;
    font-weight: bold;
    color: #333;
    text-align: center; 
    width: 100%;
    
}
        .blog-author {
            color: #666;
            margin: 10px 0;
        }
        .blog-details a {
            padding: 10px 15px;
            background-color: #3498db;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s ease;
            margin-right: 20px;
        }
        .blog-details a:first-child {
            margin-right: 10px; 
        }
        .blog-details a:hover {
            background-color: #1a6fab;
        }
        .blog-details2 a {
        padding: 10px 15px;
        background-color: 000000;
        color: #fff;
        border-radius: 5px;
        cursor: pointer;
        text-decoration: none;
        transition: background-color 0.3s ease;
        border: 3px solid #000000;
    }
        .blog-details2 a:hover {
        background-color: e70127;
    }
        .blog-details2 {
        margin-left: auto; 
    }
       .blog-details3 a {
        padding: 10px 15px;
        background-color: 13e03e;
        color: #fff;
        border-radius: 5px;
        cursor: pointer;
        text-decoration: none;
        transition: background-color 0.3s ease;
        border: 3px solid #000000;
    }
        .blog-details3 a:hover {
        background-color: 13e03e;
    }
        .blog-details3 {
        margin-left: auto; 
    }
        
    </style>
</head>
<body style="background-image: url('images/b7.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed; background-color: rgba(0, 0, 0, 0.3);">

<%@ include file="UpdatedNavBar.jsp" %>

<br>
<div class="name">
<h3 align="center">MY PLAYLIST'S</h3>
</div>
<div class="blog-card-container">
    <c:forEach items="${allplaylist}" var="playlist" varStatus="loop">
        <c:if test="${playlist.id == uid}">
            <div class="blog-card">
                <c:choose>
                    <c:when test="${playlist.type == 'PUBLIC'}">
                        <div class="blog-details" style="background-color: palegreen;">
                    </c:when>
                    <c:otherwise>
                        <div class="blog-details" style="background-color: fb617f;">
                    </c:otherwise>
                </c:choose>
                    <div class="blog-title"><b></b> <c:out value="${playlist.pname}" />
                    </div>
                    <div class="blog-details3">
                    <a href="viewplaylist/${uid}/${playlist.pid}">VIEW</a>
                    </div>
                    <div class="blog-details2">
                        <a href="delete/${uid}/${playlist.pid}">DELETE</a>
                    </div>
                </div>
            </div>
        </c:if>
    </c:forEach>
</div>

</body>
</html>
