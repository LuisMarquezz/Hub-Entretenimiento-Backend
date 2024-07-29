USE hubEntretenimiento;

CREATE TABLE Users (
    userID INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(255),
    email NVARCHAR(255),
    password NVARCHAR(255)
);


CREATE TABLE Movies (
    Movie_id INT IDENTITY(1,1) PRIMARY KEY,
    title NVARCHAR(255),
    descrip NVARCHAR(300),
    genre NVARCHAR(100),
    rating DECIMAL,
);


CREATE TABLE Series (
    SerieID INT IDENTITY(1,1) PRIMARY KEY,
    title NVARCHAR(255),
    descrip NVARCHAR(300),
    genre NVARCHAR(100)
);


CREATE TABLE Episodes (
    episodeID INT IDENTITY(1,1) PRIMARY KEY,
    serieID INT ,
    seasonID INT,
    title NVARCHAR(255) ,
    descrip NVARCHAR(300),
    FOREIGN KEY (serieID) REFERENCES Series(SerieID)
);

CREATE TABLE FavoriteMovies (
    favoriteMovieID INT IDENTITY(1,1) PRIMARY KEY,
    userID INT NOT NULL,
    movieID INT NOT NULL,
    FOREIGN KEY (userID) REFERENCES Users(userID),
    FOREIGN KEY (movieID) REFERENCES Movies(Movie_id)
);


CREATE TABLE FavoriteSeries (
    favoriteSeriesID INT IDENTITY(1,1) PRIMARY KEY,
    userID INT NOT NULL,
    serieID INT NOT NULL,
    FOREIGN KEY (userID) REFERENCES Users(userID),
    FOREIGN KEY (serieID) REFERENCES Series(SerieID)
);