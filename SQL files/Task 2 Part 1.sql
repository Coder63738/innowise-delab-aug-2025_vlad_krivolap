SELECT *--customers.FIRST_NAME ,customers.LAST_NAME ,Orders.item,Orders.amount
from C
left join Customers on Customers.CUSTOMER_ID = Orders.CUSTOMER_ID