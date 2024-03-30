SELECT ord.orderid,
       cust.state
from "public"."orders" as ord
INNER JOIN "public"."customers" as cust
    on ord.customerid = cust.customerid
    AND (state = 'OH' or state = 'NY' OR state = 'OR')
order by ord.orderid

