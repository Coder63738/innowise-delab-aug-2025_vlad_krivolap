select concat_ws(' ',FIRST_NAME ,LAST_NAME ) as full_name,COUNTRY ,count(*),sum(amount) 
from CUSTOMERS
inner join ORDERS on customers.CUSTOMER_ID =ORDERS.CUSTOMER_ID 
where customers.CUSTOMER_ID in (select shippings.CUSTOMER  from SHIPPINGS where STATUS = 'Delivered')
GROUP by CUSTOMERS.CUSTOMER_ID 
HAVING count(*) > 1;