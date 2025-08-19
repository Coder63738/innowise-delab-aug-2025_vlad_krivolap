SELECT CUSTOMERS.COUNTRY ,count(country) AS count_of_customers
FROM CUSTOMERS 
group BY COUNTRY;  