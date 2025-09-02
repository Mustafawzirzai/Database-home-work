SET SERVEROUTPUT ON;

DECLARE
    n NUMBER:=5;
    result NUMBER:=1;
    i NUMBER:=1;
    
BEGIN 
    WHILE i<=n LOOP
        result := result*i;
        i := i+1;
        
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('Factorial of ' || n || ' = ' || result);
    
END;