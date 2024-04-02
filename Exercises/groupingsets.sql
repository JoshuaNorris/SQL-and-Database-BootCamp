/*
*  Calculate the total amount of employees per department and the total using grouping sets
*  Database: Employees
*  Table: Employees
*/

SELECT dept_no, count(emp_no)
FROM "public"."dept_manager"
GROUP BY
    GROUPING SETS (
        (),
        (dept_no)
    )
ORDER BY dept_no Desc;

/*
*  Calculate the total average salary per department and the total using grouping sets
*  Database: Employees
*  Table: Employees
*/

SELECT dep.dept_no, AVG(sal.salary)
FROM "public"."dept_manager" as dep
INNER JOIN "public"."salaries" as sal USING (emp_no)
GROUP BY
    GROUPING SETS (
        (),
        (dept_no)
    )
ORDER BY dept_no Desc;