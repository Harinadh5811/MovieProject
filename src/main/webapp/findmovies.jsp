<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
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

    .search-box {
      float: right;
      margin-right: 20px;
      display: flex;
    }

    .search-box input[type="text"] {
      padding: 6px;
      border-radius: 5px;
      border: 1px solid #ccc;
      flex-grow: 1;
    }

    .search-box button {
      padding: 6px 10px;
      background-color: #3498db;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .search-results {
      margin-top: 20px;
    }

    .movie-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
      gap: 20px;
      padding: 20px;
      margin-top: 200px;
    }

    .movie-card {
      background-color: #f9f9f9;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      overflow: hidden;
      cursor: pointer;
    }

    .movie-card img {
      width: 100%;
      height: auto;
      border-top-left-radius: 10px;
      border-top-right-radius: 10px;
    }

    .movie-card .movie-details {
      padding: 10px;
    }

    .movie-card .movie-title {
      font-size: 16px;
      font-weight: bold;
      margin-bottom: 5px;
    }

    .movie-details-page {
      display: none;
      padding: 20px;
      color: lightblue;
      font-size: 20px;
    }

    .movie-details-container {
      width: 100%;
      display: flex;
      align-items: flex-start;
      gap: 20px;
    }

    .movie-details-page img {
      width: 300px;
      height: auto;
      border-radius: 10px;
      margin-top: 30px;
      margin-left: 150px;
    }

    .movie-description {
      max-width: 600px;
      margin-left: 100px;
      margin-top: 60px;
    }

    .movie-description h2 {
      margin-top: 100;
    }

    .movie-description p {
      margin: 20px 0;
    }

    .movie-description strong {
      font-weight: bold;
    }

    .search-box {
      width: 80%;
      margin: 0;
      padding: 30px 30px;
      box-sizing: border-box;
      margin-right: 150px;
    }

    .search-box input[type="text"] {
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 20px 0 0 20px;
      flex-grow: 1;
      outline: none;
      border: 3px solid black;
    }

    .search-box button {
      padding: 10px 15px;
      background-color: #3498db;
      color: #fff;
      border: none;
      border-radius: 0 20px 20px 0;
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 3px solid black;
    }

    .search-box button::before {
      content: "\1F50D";
      font-size: 16px;
    }

    .button-container {
      margin-top: 20px;
      display: flex;
      gap: 20px;
      margin-left: 200px;
    }

    .back-button, .add-playlist-button {
      padding: 10px 15px;
      background-color: #3498db;
      color: #fff;
      border-radius: 5px;
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
    }
  </style>
  <title>Find Movies</title>
</head>
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

    .search-box {
      float: right;
      margin-right: 20px;
      display: flex;
    }

    .search-box input[type="text"] {
      padding: 6px;
      border-radius: 5px;
      border: 1px solid #ccc;
      flex-grow: 1;
    }

    .search-box button {
      padding: 6px 10px;
      background-color: #3498db;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .search-results {
      margin-top: 20px;
    }

    .movie-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
      gap: 20px;
      padding: 20px;
      margin-top: 200px;
    }

    .movie-card {
      background-color: #f9f9f9;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      overflow: hidden;
      cursor: pointer;
    }

    .movie-card img {
      width: 100%;
      height: auto;
      border-top-left-radius: 10px;
      border-top-right-radius: 10px;
    }

    .movie-card .movie-details {
      padding: 10px;
    }

    .movie-card .movie-title {
      font-size: 16px;
      font-weight: bold;
      margin-bottom: 5px;
    }

    .movie-details-page {
      display: none;
      padding: 20px;
      color: lightblue;
      font-size: 20px;
    }

    .movie-details-container {
      width: 100%;
      display: flex;
      align-items: flex-start;
      gap: 20px;
    }

    .movie-details-page img {
      width: 300px;
      height: auto;
      border-radius: 10px;
      margin-top: 30px;
      margin-left: 150px;
    }

    .movie-description {
      max-width: 600px;
      margin-left: 100px;
      margin-top: 60px;
    }

    .movie-description h2 {
      margin-top: 100;
    }

    .movie-description p {
      margin: 20px 0;
    }

    .movie-description strong {
      font-weight: bold;
    }

    .search-box {
      width: 80%;
      margin: 0;
      padding: 30px 30px;
      box-sizing: border-box;
      margin-right: 150px;
    }

    .search-box input[type="text"] {
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 20px 0 0 20px;
      flex-grow: 1;
      outline: none;
      border: 3px solid black;
    }

    .search-box button {
      padding: 10px 15px;
      background-color: #3498db;
      color: #fff;
      border: none;
      border-radius: 0 20px 20px 0;
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 3px solid black;
    }

    .search-box button::before {
      content: "\1F50D";
      font-size: 16px;
    }

    .button-container {
      margin-top: 20px;
      display: flex;
      gap: 20px;
      margin-left: 200px;
    }

    .back-button, .add-playlist-button {
      padding: 10px 15px;
      background-color: #3498db;
      color: #fff;
      border-radius: 5px;
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
    }
  </style>
  <title>Find Movies</title>
</head>
<head>
  <link type="text/css" rel="stylesheet" href="css/style.css">
  <style>

  </style>
  <title>Find Movies</title>
</head>
<body style="background-image: url('images/b4.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed; background-color: rgba(0, 0, 0, 0.3);">

  <%@ include file="UpdatedNavBar.jsp" %>

  <div class="search-box">
    <input type="text" id="search-term" placeholder="Search for movies">
    <button onclick="searchMovies()">Search</button>
  </div>
  <div class="search-results"></div>

  <div class="movie-details-page">
    <div class="movie-details-container">
      <img id="movie-poster" src="" alt="Movie Poster">
      <div class="movie-description">
        <u><h2 id="movie-title"></h2></u>
        <p id="movie-plot"></p>
        <p><strong><u>Genre</u>:</strong> <span id="movie-genre"></span></p>
        <p><strong><u>Released</u>:</strong> <span id="movie-released"></span></p>
        <p><strong><u>Director</u>:</strong> <span id="movie-director"></span></p>
        <p><strong><u>Actors</u>:</strong> <span id="movie-actors"></span></p>
        <p><strong><u>Rating</u>:</strong> <span id="movie-rating"></span></p>
        <p><strong><u>IMDB ID</u>:</strong> <span id="ImdbID"></span></p>
      </div>
    </div>
    <div class="button-container">
      <button class="back-button" onclick="goBack()">Back</button>
    </div>
  </div>

  <script>
    const apiKey = "869a8853";
    let currentImdbID = "";

    function customEncodeURIComponent(str) {
      return encodeURIComponent(str)
        .replace(/!/g, '%21')
        .replace(/'/g, '%27')
        .replace(/\(/g, '%28')
        .replace(/\)/g, '%29')
        .replace(/\*/g, '%2A');
    }

    function fetchDefaultMovies() {
      const urls = [
        "http://www.omdbapi.com/?i=tt3896198&apikey=" + apiKey,
        "http://www.omdbapi.com/?i=tt0111161&apikey=" + apiKey,
        "http://www.omdbapi.com/?i=tt0068646&apikey=" + apiKey,
        "http://www.omdbapi.com/?i=tt0071562&apikey=" + apiKey,
        "http://www.omdbapi.com/?i=tt0468569&apikey=" + apiKey,
        "http://www.omdbapi.com/?i=tt0108052&apikey=" + apiKey,
        "http://www.omdbapi.com/?i=tt0080684&apikey=" + apiKey,
        "http://www.omdbapi.com/?i=tt0133093&apikey=" + apiKey,
        "http://www.omdbapi.com/?i=tt0120737&apikey=" + apiKey,
        "http://www.omdbapi.com/?i=tt0110413&apikey=" + apiKey
      ];

      Promise.all(urls.map(url => fetch(url).then(response => response.json())))
        .then(movies => {
          const resultsContainer = document.querySelector(".search-results");
          resultsContainer.innerHTML = "";

          const movieGrid = document.createElement("div");
          movieGrid.classList.add("movie-grid");

          movies.forEach(movie => {
            const movieTitle = movie.Title;
            const moviePoster = movie.Poster;
            const imdbID = movie.imdbID;

            const movieCard = document.createElement("div");
            movieCard.classList.add("movie-card");

            const imageElement = document.createElement("img");
            imageElement.src = moviePoster;
            imageElement.addEventListener("click", () => {
              fetchMovieDetails(imdbID);
            });

            const movieDetails = document.createElement("div");
            movieDetails.classList.add("movie-details");

            const titleElement = document.createElement("h3");
            titleElement.classList.add("movie-title");
            titleElement.textContent = movieTitle;

            const addButton = document.createElement("button");
            addButton.classList.add("add-playlist-button");
            addButton.textContent = "Add to Playlist";
            addButton.addEventListener("click", () => {
              addToPlaylist(imdbID);
            });

            movieDetails.appendChild(titleElement);
            movieDetails.appendChild(addButton);
            movieCard.appendChild(imageElement);
            movieCard.appendChild(movieDetails);
            movieGrid.appendChild(movieCard);
          });

          resultsContainer.appendChild(movieGrid);
        })
        .catch(error => {
          console.error("Error fetching default movies:", error);
        });
    }

    function searchMovies() {
      const searchTerm = document.getElementById("search-term").value;
      if (!searchTerm) {
        alert("Please enter a search term");
        return;
      }

      const url = "http://www.omdbapi.com/?s=" + customEncodeURIComponent(searchTerm) + "&apikey=" + apiKey;

      fetch(url)
        .then(response => response.json())
        .then(data => {
          const results = data.Search;

          if (!results || results.length === 0) {
            alert("No movies found for your search term");
            return;
          }

          const resultsContainer = document.querySelector(".search-results");
          resultsContainer.innerHTML = "";
          const movieGrid = document.createElement("div");
          movieGrid.classList.add("movie-grid");

          results.forEach(movie => {
            const movieTitle = movie.Title;
            const moviePoster = movie.Poster;
            const imdbID = movie.imdbID;

            const movieCard = document.createElement("div");
            movieCard.classList.add("movie-card");

            const imageElement = document.createElement("img");
            imageElement.src = moviePoster;
            imageElement.addEventListener("click", () => {
              fetchMovieDetails(imdbID);
            });

            const movieDetails = document.createElement("div");
            movieDetails.classList.add("movie-details");

            const titleElement = document.createElement("h3");
            titleElement.classList.add("movie-title");
            titleElement.textContent = movieTitle;

            const addButton = document.createElement("button");
            addButton.classList.add("add-playlist-button");
            addButton.textContent = "Add to Playlist";
            addButton.addEventListener("click", () => {
              addToPlaylist(imdbID);
            });

            movieDetails.appendChild(titleElement);
            movieDetails.appendChild(addButton);
            movieCard.appendChild(imageElement);
            movieCard.appendChild(movieDetails);
            movieGrid.appendChild(movieCard);
          });

          resultsContainer.appendChild(movieGrid);
        })
        .catch(error => {
          console.error("Error fetching movies:", error);
        });
    }

    function fetchMovieDetails(imdbID) {
      const url = "http://www.omdbapi.com/?i=" + imdbID + "&apikey=" + apiKey;

      fetch(url)
        .then(response => response.json())
        .then(data => {
          document.querySelector(".search-results").style.display = 'none';
          const detailsPage = document.querySelector(".movie-details-page");
          detailsPage.style.display = 'block';
          document.getElementById("movie-poster").src = data.Poster;
          document.getElementById("movie-title").textContent = data.Title;
          document.getElementById("movie-plot").textContent = data.Plot;
          document.getElementById("movie-genre").textContent = data.Genre;
          document.getElementById("movie-released").textContent = data.Released;
          document.getElementById("movie-director").textContent = data.Director;
          document.getElementById("movie-actors").textContent = data.Actors;
          document.getElementById("movie-rating").textContent = data.imdbRating; 
          document.getElementById("ImdbID").textContent = imdbID; 
          currentImdbID = imdbID;
        })
        .catch(error => {
          console.error("Error fetching movie details:", error);
        });
    }

    function goBack() {
      document.querySelector(".movie-details-page").style.display = 'none';
      document.querySelector(".search-results").style.display = 'block';
    }

    function addToPlaylist(imdbID) {
    	var	x = imdbID;
    	console.log(x);
      const addPlaylistUrl = "addtoplaylist?mid="+x+"&id="+`${uid}`;
   	 window.location.href = addPlaylistUrl;
     console.log(addPlaylistUrl);
    }

    document.addEventListener("DOMContentLoaded", fetchDefaultMovies);
  </script>
</body>
</html>
