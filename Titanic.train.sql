SELECT * FROM Titanic.train;
use Titanic;
-- READ DATA --
SELECT * from Titanic.train;
-- What is the size of the dataset? --
SELECT COUNT(*) AS total_rows FROM Titanic.train;
-- What is the distribution of values in each column? --
SELECT Survived,COUNT(DISTINCT Survived) AS distinct_values,COUNT(*) AS total_rows, MAX(Survived) AS max_value, MIN(Survived) AS min_value FROM Titanic.train GROUP BY Survived;
-- Are there any trends or patterns in the data over time? --
SELECT YEAR(embarked) AS year,AVG(age) AS average_age, AVG(fare) AS average_fare FROM Titanic.train GROUP BY year ORDER BY year;
-- Which passenger class had the highest survival rate --
SELECT Pclass, COUNT(*) AS total, SUM(survived) AS survived,SUM(survived) / COUNT(*) AS survival_rate FROM Titanic.train GROUP BY Pclass ORDER BY survival_rate DESC LIMIT 1;
-- What is the distribution of passenger ages in the dataset? --
SELECT age, COUNT(*) AS count FROM Titanic.train GROUP BY age ORDER BY age;
-- Are there any correlations between the numerical variables (e.g., age, fare, class) and the survival status of the passengers?--
SELECT age,fare,pclass,survived FROM Titanic.train;
-- What are the most common names and their respective counts in the dataset? --
SELECT name, COUNT(*) AS name_count FROM Titanic.train GROUP BY Name ORDER BY name_count DESC;
-- Are there any significant differences in the survival rates between the different sexes or ages? --
SELECT Sex, Age,AVG(survived) AS survival_rate FROM Titanic.train GROUP BY Sex, Age HAVING COUNT(*) > 10 ORDER BY survival_rate DESC;
