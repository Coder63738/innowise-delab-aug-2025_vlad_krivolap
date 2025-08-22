select  order_id,CUSTOMER_ID,ITEM,AMOUNT,sum(AMOUNT ) over(partition by customer_id)
FROM orders;