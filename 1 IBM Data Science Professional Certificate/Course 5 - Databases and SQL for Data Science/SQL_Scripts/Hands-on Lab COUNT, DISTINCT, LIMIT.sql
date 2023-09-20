# Task: Practice exercises on COUNT
# 1.Retrieve the number of locations of the films which are directed by Woody Allen.
SELECT COUNT(Locations)
FROM coursera.filmlocations
WHERE Writer = 'Woody Allen';
# 2.Retrieve the number of films shot at Russian Hill.
SELECT COUNT(Title)
FROM coursera.filmlocations
WHERE Locations = 'Russian Hill';
# 3.Retrieve the number of rows having a release year older than 1950 from the “FilmLocations” table.
SELECT COUNT(*) 
FROM coursera.filmlocations
WHERE `Release Year` < 1950;

# Task: Practice exercises on DISTINCT
# 1.Retrieve the name of all unique films released in the 21st century and onwards, along with their release years.
SELECT DISTINCT(Title), `Release Year`
FROM coursera.filmlocations
WHERE `Release Year` < 2001;
# 2.Retrieve the names of all the directors and their distinct films shot at City Hall.
SELECT Distinct(Title),Director 
FROM coursera.filmlocations
WHERE Locations = 'City Hall';
# 3.Retrieve the number of distributors distinctly who distributed films acted by Clint Eastwood as 1st actor.
SELECT COUNT(DISTINCT(Distributor))
FROM coursera.filmlocations
WHERE `Actor 1` = 'Clint Eastwood';

# Task: Practice exercises on LIMIT
# 1.Retrieve the name of first 50 films distinctly.
SELECT DISTINCT(Title)
FROM coursera.filmlocations
LIMIT 50;
# 2.Retrieve first 10 film names distinctly released in 2015.
SELECT DISTINCT(Title)
FROM coursera.filmlocations
WHERE `Release Year` = 2015
LIMIT 10;
# 3.Retrieve the next 3 film names distinctly after first 5 films released in 2015.
SELECT DISTINCT(Title) FROM coursera.filmlocations WHERE Locations = 2015 LIMIT 3 OFFSET 5;

