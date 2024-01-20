use world;
# Task 1
-- Using count, get the number of cities in the USA
SELECT COUNT(*) AS "Number of Cities in US"
FROM city
WHERE CountryCode = "USA";

# Task 2
-- Find out what the population and average life expectancy for people in Argentina (ARG) is.
SELECT Name AS Country, Population, LifeExpectancy AS "Life Expentancy"
FROM country
WHERE Code = "ARG";

# Task 3
-- Using ORDER BY, LIMIT, what country has the highest life expectancy?
SELECT Name AS Country, LifeExpectancy AS "Life Expectancy"
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 1;

# Task 4
-- Select 25 cities around the world that start with the letter 'F' in a single SQL query.
SELECT city.Name AS City, country.Name AS Country
FROM city
INNER JOIN country 
ON city.CountryCode = country.Code
WHERE city.Name LIKE "F%"
LIMIT 25;

# Task 5
-- Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.
SELECT ID, Name AS City, Population
FROM city
LIMIT 10;

# Task 6
-- Create a SQL statement to find only those cities from city table whose population is larger than 2000000.
SELECT city.Name AS City, city.Population, country.Name AS Country
FROM city
INNER JOIN country 
ON city.CountryCode = country.Code
WHERE city.Population > 2000000
ORDER BY city.Population DESC;

# Task 7
-- Create a SQL statement to find all city names from city table whose name begins with “Be” prefix.
SELECT city.Name AS City, country.Name AS Country
FROM city 
INNER JOIN country 
ON city.CountryCode = country.Code
WHERE city.Name LIKE "Be%";

# Task 8
-- Create a SQL statement to find only those cities from city table whose population is between 500000-1000000.
SELECT city.Name AS City, city.Population, country.Name AS Country
FROM city
INNER JOIN country 
ON city.CountryCode = country.Code
WHERE city.Population BETWEEN 500000 AND 1000000
ORDER BY city.Population DESC;

# Task 9
-- Create a SQL statement to find a city with the lowest population in the city table.
SELECT city.Name AS City, city.Population, country.Name AS Country
FROM city
INNER JOIN country 
ON city.CountryCode = country.Code
ORDER BY city.Population
LIMIT 1;
 
# Task 10
-- Create a SQL statement to find the capital of Spain (ESP).
SELECT country.Name AS Country, city.Name AS Captital
FROM city
INNER JOIN country 
ON city.ID = country.Capital
WHERE country.Code = "ESP";

# Task 11
-- Create a SQL statement to list all the languages spoken in the Caribbean region.
SELECT DISTINCT countrylanguage.Language AS "Languages in Caribbean Region"
FROM countrylanguage
INNER JOIN country 
ON countrylanguage.CountryCode = country.Code
WHERE country.Region = "Caribbean";

# Task 12
-- Create a SQL statement to find all cities from the Europe continent
SELECT city.Name AS City, country.Name AS Country, country.Continent
FROM city
INNER JOIN country 
ON city.CountryCode = country.Code
WHERE country.Continent = "Europe";