/*
  GenerateMoviesRatingsCSV.sql
  Task:  export .CSV file that contains the data for movies[movies.csv], users[users.csv], and ratings[ratings.csv].
*/

/* Pls run below command to get the outfile path*/
/* SHOW VARIABLES LIKE "secure_file_priv"; */
/* Pls ensure no files exists in the outfile path with names as movies.csv, users.csv and ratings.csv */


SELECT 'Id','MovieName','YearOfRelease','Genre'
UNION
SELECT movie_id, name, year, genre
FROM movies
INTO OUTFILE  'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/movies.csv'
FIELDS TERMINATED BY  ','
ENCLOSED BY  '"' ;


SELECT 'Id','UserName','Age'
UNION
SELECT user_id, name, age
FROM users
INTO OUTFILE  'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/users.csv'
FIELDS TERMINATED BY  ','
ENCLOSED BY  '"';


SELECT 'Ratings','MovieId','MovieName','UserId','Username'
UNION
SELECT COALESCE(r.rating,''), r.movie_id movie_id, m.name movie_name,  r.user_id user_id, u.name user_name 
FROM users u , movies m, ratings r
where u.user_id = r.user_id
  and m.movie_id = r.movie_id
INTO OUTFILE  'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/ratings.csv'
FIELDS TERMINATED BY  ','
ENCLOSED BY  '"';