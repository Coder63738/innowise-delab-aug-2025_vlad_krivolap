SELECT ITEM ,avg(AMOUNT) as avg_amount,count(*)
FROM ORDERS 
group BY ITEM 