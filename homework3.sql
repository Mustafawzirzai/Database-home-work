SET SERVEROUTPUT ON;

DECLARE 
    balance NUMBER :=3000;
    
BEGIN
    IF balance<1000 THEN
        DBMS_OUTPUT.PUT_LINE('low balance');
    
    ELSIF balance BETWEEN 1000 AND 5000 THEN
        DBMS_OUTPUT.PUT_LINE('sufficient Balance');
    ELSE
        DBMS_OUTPUT.PUT_LINE('High balance');
    END IF;

END;
