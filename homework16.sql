--
--CREATE TABLE transactions (
--    txn_id   NUMBER PRIMARY KEY,
--    amount   NUMBER(10,2),
--    type     VARCHAR2(10) CHECK (type IN ('CREDIT', 'DEBIT'))
--);
--
---- Insert sample data
--INSERT INTO transactions VALUES (1, 2000, 'CREDIT');
--INSERT INTO transactions VALUES (2, 500, 'DEBIT');
--INSERT INTO transactions VALUES (3, 1000, 'CREDIT');
--INSERT INTO transactions VALUES (4, 700, 'DEBIT');
--INSERT INTO transactions VALUES (5, 3000, 'CREDIT');
--
--COMMIT;
SET SERVEROUTPUT ON;

DECLARE
   final_balance NUMBER := 0;
BEGIN
   FOR rec IN (SELECT amount, type FROM transactions) LOOP
      IF rec.type = 'CREDIT' THEN
         final_balance := final_balance + rec.amount;
      ELSIF rec.type = 'DEBIT' THEN
         final_balance := final_balance - rec.amount;
      END IF;
   END LOOP;

   DBMS_OUTPUT.PUT_LINE('Final Balance = ' || final_balance);
END;
/
