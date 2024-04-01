
/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/

SELECT hire_date, COUNT(emp_no)
FROM "public"."employees"
GROUP BY hire_date
ORDER BY hire_date

/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/

SELECT e.emp_no, count(t.title)
FROM "public"."employees" as e
    inner join "public"."titles" as t USING (emp_no)
WHERE (EXTRACT(YEAR FROM hire_date) > '1991')
group by emp_no;


/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/

SELECT e.emp_no,
       concat(e.first_name, ' ', e.last_name),
       demp.dept_no,
       demp.from_date,
       demp.to_date,
       dep.dept_name
FROM "public"."employees" as e
    inner JOIN "public"."dept_emp" as demp USING (emp_no)
    inner JOIN "public"."departments" as dep
        on dep.dept_no = demp.dept_no
where dep.dept_name = 'Development';

