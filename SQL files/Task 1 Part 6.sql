select CONCAT_WS(' ',FIRST_NAME , LAST_NAME ) as full_name, COUNTRY ,
(select count(*)
from ORDERS 
where ORDERS.CUSTOMER_ID = CUSTOMERS.CUSTOMER_ID ) as total_orders,
(select sum(AMOUNT)
from ORDERS 
where ORDERS.CUSTOMER_ID = CUSTOMERS.CUSTOMER_ID ) as total_amount
from CUSTOMERS 