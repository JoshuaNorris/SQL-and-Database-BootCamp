/*
*  Create a view "90-95" that:
*  Shows me all the employees, hired between 1990 and 1995
*  Database: Employees
*/

-- CREATE VIEW "90-95" AS
-- SELECT e.emp_no, e.first_name, s.from_date
-- from employees as e
-- join salaries as s USING (emp_no)
-- where 
--     EXTRACT(year from s.from_date) >= '1990' and 
--     EXTRACT(year from s.from_date) <= '1995'

SELECT * 
from "90-95"

/*
*  Create a view "bigbucks" that:
*  Shows me all employees that have ever had a salary over 80000
*  Database: Employees
*/

SELECT * FROM "bigbucks"

-- CREATE OR REPLACE view "bigbucks" AS
-- SELECT DISTINCT emp_no, from_date, salary
-- FROM salaries
-- WHERE salary > 80000