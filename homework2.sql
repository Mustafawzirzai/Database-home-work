SET SERVEROUTPUT ON;

DECLARE
   mark1 NUMBER := 85;  -- subject 1 marks
   mark2 NUMBER := 90;  -- subject 2 marks
   mark3 NUMBER := 80;  -- subject 3 marks
   avg_marks  NUMBER;
BEGIN
   avg_marks := (mark1 + mark2 + mark3) / 3;
   DBMS_OUTPUT.PUT_LINE('Average Marks = ' || avg_marks);
END;
/
    