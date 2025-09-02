--
--
--
--
--CREATE TABLE employees (
--    emp_id     NUMBER PRIMARY KEY,
--    emp_name   VARCHAR2(50),
--    salary     NUMBER(10,2),
--    dept_id    VARCHAR2(10)
--);
--
--
--INSERT INTO employees VALUES (101, 'Ali', 2500, 'IT');
--INSERT INTO employees VALUES (102, 'Sara', 3200, 'HR');
--INSERT INTO employees VALUES (103, 'John', 4500, 'IT');
--INSERT INTO employees VALUES (104, 'Mary', 8000, 'FIN');
--INSERT INTO employees VALUES (105, 'Zaki', 6000, 'HR');
--INSERT INTO employees VALUES (106, 'Noor', 1500, 'IT');
--
--COMMIT;

SET SERVEROUTPUT ON;

DECLARE
   avg_salary NUMBER;
BEGIN
   SELECT AVG(salary) INTO avg_salary FROM employees;

   FOR rec IN (SELECT emp_name, salary FROM employees WHERE salary > avg_salary) LOOP
      DBMS_OUTPUT.PUT_LINE(rec.emp_name || ' earns ' || rec.salary);
   END LOOP;
END;
/
