/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/


-- Subquery
SELECT orderid, customerid
from orders
where customerid in (
    SELECT customerid
    from customers
    WHERE state in ('OH', 'NY', 'OR')
);



--  JOIN 
SELECt o.orderid, o.customerid
from orders as o
join customers as c using (customerid)
WHERE c.state in ('OH', 'NY', 'OR');

/*
* DB: Employees
* Table: employees
* Question: Filter employees who have emp_no 110183 as a manager
*/

--     SUBQUERY

SELECT emp_no
from employees as e
JOIN dept_emp as d using (emp_no)
where d.dept_no in (
    SELECT dept_no
    from dept_manager
    WHERE emp_no = '110183'
)


-- JOIN

SELECT e.emp_no, dem.emp_no
from employees as e
JOIN dept_emp as dep USING (emp_no)
JOIn dept_manager AS dem
    on dep.dept_no = dem.dept_no
WHERE dem.emp_no = '110183'