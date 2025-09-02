SET SERVEROUTPUT ON;

DECLARE
   v_salary NUMBER := 7500;
BEGIN
   IF v_salary > 8000 THEN
      DBMS_OUTPUT.PUT_LINE('High Earner');
   ELSIF v_salary BETWEEN 4000 AND 8000 THEN
      DBMS_OUTPUT.PUT_LINE('Mid Earner');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Low Earner');
   END IF;
END;
/
