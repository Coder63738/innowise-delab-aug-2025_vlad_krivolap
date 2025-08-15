select concat_ws(' ',FIRST_NAME ,LAST_NAME ) as full_name,COUNTRY ,count(*),sum(amount) --CONCAT_WS FIRST_NAME , LAST_NAME ) as full_name, COUNTRY ,count(*),sum(amount)
from CUSTOMERS
inner join ORDERS on customers.CUSTOMER_ID =ORDERS.CUSTOMER_ID 
inner join SHIPPINGS on customers.CUSTOMER_ID =Shippings.CUSTOMER
where SHIPPINGS.STATUS like '%Delivered%'
GROUP by CUSTOMERS.CUSTOMER_ID 
HAVING count(*) > 1