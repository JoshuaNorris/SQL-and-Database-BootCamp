
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/


SELECT ord.orderid,
       cust.state
from "public"."orders" as ord
INNER JOIN "public"."customers" as cust
    on ord.customerid = cust.customerid
    AND (state = 'OH' or state = 'NY' OR state = 'OR')
order by ord.orderid


/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/


SELECT prod.prod_id,
       prod. title,
       inv. quan_in_stock
From "public"."products" as prod
inner join "public"."inventory" as inv
    on inv.prod_id = prod.prod_id


/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/



select demp.emp_no,
       Concat(emp.first_name, ' ',  emp.last_name),
       dep.dept_name
from "public"."dept_emp" as demp
    inner join "public"."employees" as emp
        on emp.emp_no = demp.emp_no
    inner join "public"."departments" as dep
        on dep.dept_no = demp.dept_no
       