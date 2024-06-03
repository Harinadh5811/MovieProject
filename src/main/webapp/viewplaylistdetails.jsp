<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <style>
        .name {
            font-size: 25px;
            font-weight: bold;
            border: 1px solid #bbdefb;
            margin-bottom: 20px;
            background-color: skyblue;
            border-radius: 20px;
        }
        .movie-details-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 20px;
            padding: 20px;
            margin-top: 50px;
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
        .back-button-container {
            text-align: center;
            margin-top: 20px;
        }
        .back-button {
            padding: 10px 15px;
            background-color: #3498db;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
            display: inline-block;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }
        .back-button:hover {
            background-color: #1a6fab;
        }
        .movie-details-page {
            display: none;
            padding: 20px;
            color: black;
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
            margin-top: 100px;
        }
        .movie-description p {
            margin: 20px 0;
        }
        .movie-description strong {
            font-weight: bold;
        }
    </style>
</head>
<body style="background-image: url('images/b8.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed; background-color: rgba(0, 0, 0, 0.3);">

<br>
<div class="name">
    <h3 align="center">Playlist Details</h3>
</div>
<div class="movie-details-container">
    <c:forEach items="${playlistDetails}" var="details">
        <div class="movie-card">
            <img src="" alt="Movie Poster">
            <div class="movie-details">
                <p class="movie-title"><span class="movie-title-span">${details.mid}</span></p>
            </div>
        </div>
    </c:forEach>
</div>
<div class="back-button-container">
    <a href="/viewmyplaylist" class="back-button">VIEW MY PLAYLIST'S</a>
</div>

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
        </div>
    </div>
    <div class="button-container">
        <button class="back-button" onclick="goBack()">Back</button>
    </div>
</div>

<script>
    const apiKey = "869a8853";

    function fetchMovieDetails(movieId) {
        const url = "http://www.omdbapi.com/?i=" + movieId + "&apikey=" + apiKey;
        return fetch(url)
            .then(response => response.json())
            .catch(error => console.error("Error fetching movie details:", error));
    }

    function updateMovieCard(movie, cardElement) {
        if (movie.Response === "True") {
            cardElement.querySelector("img").src = movie.Poster !== "N/A" ? movie.Poster : "placeholder.jpg";
            cardElement.querySelector(".movie-title-span").textContent = movie.Title;
        } else {
            cardElement.querySelector("img").src = "placeholder.jpg";
            cardElement.querySelector(".movie-title-span").textContent = "Title Not Available";
        }
    }

    document.querySelectorAll(".movie-card").forEach(card => {
        const movieId = card.querySelector(".movie-title-span").textContent;
        fetchMovieDetails(movieId)
            .then(movie => updateMovieCard(movie, card))
            .then(() => {
                card.addEventListener("click", () => {
                    fetchMovieDetails(movieId)
                        .then(data => {
                            document.querySelector(".movie-details-container").style.display = 'none';
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
                        })
                        .catch(error => console.error("Error fetching movie details:", error));
                });
            });
    });

    function goBack() {
        document.querySelector(".movie-details-page").style.display = 'none';
        document.querySelector(".movie-details-container").style.display = 'grid';
    }
</script>

</body>
</html>
