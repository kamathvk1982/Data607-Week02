/*
  GenerateMoviesRatingsCSV.sql
  Task:  export .CSV file that contains the data for movies[movies.csv], users[users.csv], and ratings[ratings.csv].
*/

/* Pls run below command to get the outfile path*/
/* SHOW VARIABLES LIKE "secure_file_priv"; */
/* Pls ensure no files exists in the outfile path with names as movies.csv, users.csv and ratings.csv */

SELECT * INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/movies.csv'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '\\'
LINES TERMINATED BY '\n'
FROM movies
ORDER BY movie_id;

SELECT * INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/users.csv'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '\\'
LINES TERMINATED BY '\n'
FROM users
ORDER BY user_id;

SELECT r.movie_id movie_id, m.name movie_name,  r.user_id user_id, u.name user_name, rating INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/ratings.csv'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '\\'
LINES TERMINATED BY '\n'
FROM users u , movies m, ratings r
where u.user_id = r.user_id
  and m.movie_id = r.movie_id
ORDER BY user_id;