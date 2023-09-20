# The following is done using MySql oppose to IBM Db2...
# Task A: Exploring the Database
SELECT * FROM coursera.filmlocations;

# Task B: Example exercises on SELECT statement
# In this example, now we want to retrieve selective details of all the film records. Let us retrieve the names of all the films along with director names and writer names
SELECT Title, Director, Writer 
FROM coursera.FilmLocations;

# In this example, we want to retrieve film names along with filming locations and release years. But we also want to restrict the output resultset so that we can retrieve only the film records released in 2001 and onwards (release years after 2001 including 2001).
SELECT Title, Locations, `Release Year` 
FROM coursera.filmlocations
WHERE `Release Year`  <= 2001; 

# Task C: Practice exercises on SELECT statement
# 1.Retrieve the fun facts and filming locations of all films.
SELECT `Fun Facts`, Locations 
FROM coursera.filmlocations;

# 2.Retrieve the names of all films released in the 20th century and before (release years before 2000 including 2000) that, along with filming locations and release years.
SELECT Title, Locations, `Release Year` 
FROM coursera.filmlocations
WHERE `Release Year` <= 2000;

# 3.Retrieve the names, production company names, filming locations, and release years of the films which are not written by James Cameron.
SELECT Title, `Production Company`, Locations, `Release Year`
FROM coursera.filmlocations
WHERE Writer <> "James Cameron"
ORDER BY `Release Year` DESC;
