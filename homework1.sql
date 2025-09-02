SET SERVEROUTPUT ON;


DECLARE
   basic_salary   NUMBER := 30000;  -- example monthly salary
   bonus          NUMBER := 5000;   -- example bonus
   annual_salary  NUMBER;
BEGIN
   annual_salary := (basic_salary * 12) + bonus;
   DBMS_OUTPUT.PUT_LINE('Annual Salary = ' || annual_salary);
END;
/


