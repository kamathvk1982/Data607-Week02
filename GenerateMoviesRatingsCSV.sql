/*
  GenerateMoviesRatingsCSV.sql
  Task:  Export .CSV file that contains the data for movies[movies.csv], users[users.csv], ratings[ratings.csv] and upcoming_movies[upcoming_movies.csv].
  Create Dt: 7th FEb 2020			Created By: Vinayak K
  Change Dt: 						Changed By: 
*/

/* Pls run below command to get the outfile path*/
/* SHOW VARIABLES LIKE "secure_file_priv"; */
/* Pls ensure no files exists in the outfile path with names as movies.csv, users.csv ,ratings.csv and upcoming_movies.csv*/


SELECT movie_id, name, year, genre
FROM movies
INTO OUTFILE  'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/movies.csv'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '\\'
LINES TERMINATED BY '\n' ;


SELECT user_id, name, age
FROM users
INTO OUTFILE  'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/users.csv'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '\\'
LINES TERMINATED BY '\n';


SELECT r.movie_id movie_id, m.name movie_name,  r.user_id user_id, u.name user_name , coalesce( r.rating, '')
FROM users u , movies m, ratings r
where u.user_id = r.user_id
  and m.movie_id = r.movie_id
INTO OUTFILE  'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/ratings.csv'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '\\'
LINES TERMINATED BY '\n';


SELECT  movie_id, name, year, genre, auto_rating
FROM upcoming_movies
INTO OUTFILE  'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/upcoming_movies.csv'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '\\'
LINES TERMINATED BY '\n';
