
# WORLD
World Dataset Analysis with MySQL

### Description
This project is a comprehensive analysis tool for a world dataset featuring information about cities, countries, and their populations. It utilizes MySQL for efficient data querying, sorting, and filtering, offering valuable insights for researchers, data analysts, and enthusiasts interested in global demographic trends.

### Dataset
The World Dataset Analysis tool leverages a comprehensive dataset, originally sourced from Statistics Finland, http://www.stat.fi/worldinfigures. It provides a wealth of information about global demographics. It's designed to assist researchers and enthusiasts in uncovering patterns and insights into population dynamics, urbanization trends, and socio-economic factors on a global scale.

#### Attribute Information
**Country**

| Attribute       | Data Type | Description  |
|-----------------|-----------|--------------|
| `Code`          | CHAR      | A unique three-letter code identifying each country. It's the primary key for this table. |
| `Name`          | CHAR      | The official name of the country. |
| `Continent`     | ENUM      | The continent on which the country is located. Possible values are Asia, Europe, North America, Africa, Oceania, Antarctica, and South America. |
| `Region`        | CHAR      | The specific region or area where the country is situated. |
| `SurfaceArea`   | DECIMAL   | The total surface area of the country in square kilometers. |
| `IndepYear`     | SMALLINT  | The year of independence of the country. This can be null if the country was never colonized or the data is not available. |
| `Population`    | INT       | The total number of people living in the country. |
| `LifeExpectancy`| DECIMAL   | The average life expectancy of individuals in the country. Can be null if data is not available. |
| `GNP`           | DECIMAL   | The Gross National Product of the country. Can be null if data is not available. |
| `GNPOld`        | DECIMAL   | The Gross National Product of the country in the previous year. Used to compare GNP growth or decline. Can be null if data is not available. |
| `LocalName`     | CHAR      | The name of the country in the local official language. |
| `GovernmentForm`| CHAR      | The form or system of government ruling the country. |
| `HeadOfState`   | CHAR      | The name of the current head of state. Can be null if the position is not applicable or data is not available. |
| `Capital`       | INT       | A reference ID to a table of cities, indicating the capital city of the country. Can be null if the capital city is not designated or data is not available. |
| `Code2`         | CHAR(2)   | A secondary two-letter code for the country, often used as a standard country code in international agreements or organizations. |

Key Constraint:
- PRIMARY KEY (`Code`) - Ensures each country is uniquely identified by its code.

**City**

| Attribute    | Data Type | Description  |
|--------------|-----------|--------------|
| `ID`         | INT       | A unique identifier for each city. It's an auto-increment field, meaning each new city automatically gets a unique number. |
| `Name`       | CHAR(35)  | The name of the city. |
| `CountryCode`| CHAR(3)   | A three-letter code that identifies the country the city is located in. This is a foreign key that links to the `Code` attribute in the `country` table. |
| `District`   | CHAR(20)  | The district or area within the country where the city is located. |
| `Population` | INT       | The total population of the city. |

Key Constraints:
- PRIMARY KEY (`ID`) - Ensures each city is uniquely identified by its ID.
- FOREIGN KEY (`CountryCode`) REFERENCES `world`.`country` (`Code`) - Ensures each city is associated with a valid country.

Indexes:
- INDEX on `CountryCode` (to optimize search operations and joins with the `country` table).

**Country Language**

| Attribute     | Data Type | Description  |
|---------------|-----------|--------------|
| `CountryCode` | CHAR(3)   | A three-letter code that identifies the country. This is a foreign key that links to the `Code` attribute in the `country` table. |
| `Language`    | CHAR(30)  | The name of the language spoken in the country. |
| `IsOfficial`  | ENUM('T', 'F') | Indicates whether the language is an official language in the country. 'T' stands for True, and 'F' stands for False. |
| `Percentage`  | DECIMAL(4,1) | The percentage of the country's population that speaks the language. |

Key Constraints:
- PRIMARY KEY (`CountryCode`, `Language`) - A composite key ensuring that each language is listed only once per country.
- FOREIGN KEY (`CountryCode`) REFERENCES `world`.`country` (`Code`) - Ensures referential integrity by linking each language to a valid country code.

Index:
- INDEX on `CountryCode` (to optimize search operations and joins with the `country` table).


### Technologies Used
This project is built using MySQL 8.0 and Python 3.10. Additional data analysis is performed using Python libraries such as Pandas for data manipulation and Seaborn for data visualization.

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

