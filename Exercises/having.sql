
/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/

SELECT e.emp_no, count(t.title) AS "Number of Titles"
FROM "public"."employees" as e
    inner join "public"."titles" as t USING (emp_no)
WHERE (EXTRACT(YEAR FROM hire_date) > '1991')
group by emp_no
HAVING count(t.title) > 2;


/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/

SELECT e.emp_no,
       COUNT(sal.salary) as "Salary changes"
FROM "public"."employees" as e
    inner JOIN "public"."salaries" as sal on sal.emp_no = e.emp_no
    inner join "public"."dept_emp" as dep on dep.emp_no = e.emp_no
where dep.dept_no = 'd005'
GROUP BY e.emp_no
Having COUNT(sal.salary) > '15'
order by COUNT(sal.salary);

/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/

SELECT e.emp_no,
       COUNT(DISTINCT t.title) as "Title changes"
FROM "public"."employees" as e
    inner JOIN "public"."titles" as t on t.emp_no = e.emp_no
    inner join "public"."dept_emp" as dep on dep.emp_no = e.emp_no
GROUP BY e.emp_no
Having COUNT(DISTINCT t.title) > '0'
order by COUNT(DISTINCT t.title);