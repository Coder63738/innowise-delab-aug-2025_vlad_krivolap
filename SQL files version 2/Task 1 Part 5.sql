select FIRST_NAME ,LAST_NAME,amount
from ORDERS
INNER JOIN customers ON customers.customer_id = orders.customer_id
where AMOUNT = (
select max(AMOUNT) 
from ORDERS
);

