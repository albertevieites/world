
# WORLD
World Dataset Analysis with MySQL

### Description
This project is a comprehensive analysis tool for a world dataset featuring information about cities, countries, and their populations. It utilizes MySQL for efficient data querying, sorting, and filtering, offering valuable insights for researchers, data analysts, and enthusiasts interested in global demographic trends.

### Technologies Used
MySQL, Python

### Features
Query information about cities and countries
Sort data by population, area, GDP, etc.
Advanced filtering options to pinpoint specific data.

### Installation and Setup
Install MySQL: [Download link](https://dev.mysql.com/downloads/installer/)

Import the world dataset: [Setting up the world database](https://dev.mysql.com/doc/world-setup/en/)

### Usage
Some query examples
```
-- Using count, get the number of cities in the USA
SELECT COUNT(*) AS "Number of Cities in US"
FROM city
WHERE CountryCode = "USA";

-- Find out what the population and average 
-- life expectancy for people in Argentina (ARG) is.
SELECT Name AS Country, Population, LifeExpectancy AS "Life Expentancy"
FROM country
WHERE Code = "ARG";
```

### Diagram
Diagram of the relation between different tables
![Diagram](assets/diagram.png)

### Contribution Guidelines
Contributions are welcome! Please adhere to this project's code of conduct.

### Contact Information
For support or queries, reach out to me at [my email address](mailto:albertevieites@gmail.com).

### Acknowledgements
Special thanks to [Yusuf Satilmis](https://github.com/yusufsjustit) for their invaluable assistance in this project.

