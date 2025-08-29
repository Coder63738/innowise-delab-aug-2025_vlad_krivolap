CREATE OR REPLACE FUNCTION CalculateAnnualBonus(employee_id INT ,salary NUMERIC) 
RETURNS NUMERIC
LANGUAGE plpgsql
AS $$
DECLARE
    new_salary NUMERIC; 
BEGIN

    new_salary = salary*1.1;
    
    RETURN new_salary;
END;
$$;
