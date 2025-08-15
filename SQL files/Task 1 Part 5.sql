select FIRST_NAME ,LAST_NAME,amount
from ORDERS, CUSTOMERS 
where AMOUNT = (
select max(AMOUNT) 
from ORDERS
);

