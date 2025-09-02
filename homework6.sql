SET SERVEROUTPUT ON;

DECLARE
    num NUMBER:=7;
    
BEGIN
    FOR i IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(num || ' x ' || i || ' = ' || (num * i));
    END LOOP;
    
END;