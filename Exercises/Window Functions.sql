-- Find the current salary

-- https://github.com/mobinni/Complete-SQL-Database-Bootcamp-Zero-to-Mastery/blob/master/SQL%20Deep%20Dive/Window%20Functions/exercises.sql

select 
       DISTINCT e.emp_no,
       LAST_VALUE(s.salary) OVER (
            partition BY emp_no
            ORDER BY s.from_date
            range between unbounded preceding and unbounded following
       ) as "Current Salary"
from "public"."salaries" as s
inner join "public"."employees" as e Using(emp_no)

ORDER BY e.emp_no


/*
*  Show the population per continent
*  Database: World
*  Table: Country
*/

SELECT distinct continent,
       SUM(population) OVER (
            PARTITION BY continent
       ) as "Continent Population"
FROM country;

/*
*  To the previous query add on the ability to calculate the percentage of the world population
*  What that means is that you will divide the population of that continent by the total population and multiply by 100 to get a percentage.
*  Make sure you convert the population numbers to float using `population::float` otherwise you may see zero pop up
*  Try to use CONCAT AND ROUND to make the data look pretty
*
*  Database: World
*  Table: Country
*/

SELECT distinct continent,
       (SUM(population::float) OVER (
            PARTITION BY continent
       )) / (SUM(population::float) OVER (
            RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
       )) * 100 as "Percentage of the world"
FROM country;



/*
*  Count the number of towns per region
*
*  Database: France
*  Table: Regions (Join + Window function)
*/

SELECT *
FROM regions AS r;





