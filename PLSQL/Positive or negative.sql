SET SERVEROUTPUT ON;

ACCEPT n NUMBER PROMPT 'Enter number: '

DECLARE
   n NUMBER := &n;
BEGIN
   IF n < 0 THEN
      DBMS_OUTPUT.PUT_LINE('Negative');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Positive');
   END IF;
END;
/
