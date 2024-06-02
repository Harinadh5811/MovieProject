# MovieProject

Welcome to the Movie Playlist Application! This project is built using Spring Boot and allows users to search for movies, create personalized lists of movies, and manage these lists with user authentication. Users can sign up, sign in, search for movies using the OMDB API, and create either public or private movie lists.

## Features

1. **User Authentication**:
   - Sign In
   - Sign Up

2. **Movie Search**:
   - Search movies using the OMDB API
   - View detailed information about movies

3. **Movie Lists**:
   - Create lists of movies (similar to YouTube playlists)
   - Display different movie lists created by the user on the home page
   - Option to make lists public (accessible by anyone with the link) or private (only visible to the creator)

4. **Responsive Layout**:
   - User-friendly and visually appealing interface for search and list pages

## Live Demo

Check out the live demo of the application: [Live Demo Link](#)


## Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Java Development Kit (JDK) 11 or higher (https://www.oracle.com/java/technologies/javase-jdk11-downloads.html)
- Maven (https://maven.apache.org/)
- OMDB API Key (http://www.omdbapi.com/apikey.aspx)

### Installation

1.Clone your Repository:

   ```bash
   git clone https://github.com/Harinadh5811/MovieProject.git

2.Install dependencies and build the project::

   ```bash
   mvn clean install

3.Create an application.properties file in the src/main/resources directory and add your OMDB API key:

    ```properties
   omdb.api.key=your_api_key
   spring.datasource.url=jdbc:mysql://localhost:3306/yourdatabasename
   spring.datasource.username=username
   spring.datasource.password=password
   spring.jpa.hibernate.ddl-auto=update

4.Run the application:

    ```bash
   mvn spring-boot:run

### Deployment

### Usage

1.Sign Up / Sign In:

   - Navigate to the Sign Up page to create a new account or Sign In if you already have an account.

2.Search Movies:

   - After logging in, use the nav bar on the home screen to access all the pages.
   - In findmovies page use the search bar to find movies.
   - View detailed information about each movie by clicking on the movie card.

3.Create and Manage Playlists:

   - Create new Playlist from CreatePlaylist page.
   - Change the access of the lists based on your wish ((Private/Public))
   - Manage Playlist from ViewPlaylist page ((Delete/View))
   - Explore all the Playlists created by different users in ViewallPlaylist page.

### Acknowledgements

   - OMDB API for providing movie data.
   - Inspiration from various movie and playlist applications for the UI design.

### Contributing

   - Contributions are welcome! Please fork the repository and create a pull request with your changes.

   
