SELECT (),amount
from ORDERS
where AGE = (
select max(AMOUNT) 
from ORDERS
);

