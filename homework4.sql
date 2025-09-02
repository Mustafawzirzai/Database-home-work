SET SERVEROUTPUT ON;

DECLARE
    percentage NUMBER:=78;
    grade VARCHAR2(20);
    
BEGIN 
    grade := CASE
            WHEN percentage BETWEEN 90 AND 100 THEN 'A Grade'
            WHEN percentage BETWEEN 75 AND 89 THEN 'B Grade'
            WHEN percentage BETWEEN 50 AND 74 THEN 'C Grade'
        
            ELSE 'Fail'
        
        END;
    DBMS_OUTPUT.PUT_LINE('Grade = ' || grade);
END;
    
        