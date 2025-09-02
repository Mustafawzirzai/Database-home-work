SET SERVEROUTPUT ON;
DECLARE
    bill_amout NUMBER :=4500;
    discoutn NUMBER :=0;
    final_bill NUMBER;
    
BEGIN
    IF bill_amount >5000 THEN
        discount :=bill_amount*0.20;
        
    ELSIF bill_amount BETWEEN 2000 AND 5000 THEN
        discount := bill_amount*0.10;
    
    END IF;
    
    final_bill := bill_amount-discount;
    DBMS_OUTPUT.PUT_LINE('Final Bill = ' || final_bill);
END;
    