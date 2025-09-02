SET SERVEROUTPUT ON;
BEGIN
    FOR emd_id IN 100..120 LOOP
        DBMS_OUTPUT.PUT_LINE('Employee id ='||emd_id);
        
    END LOOP;
    
END;