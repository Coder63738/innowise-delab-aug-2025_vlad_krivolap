SELECT ITEM ,count(*),round(avg(AMOUNT)) as avg_amount
FROM ORDERS 
group BY ITEM 