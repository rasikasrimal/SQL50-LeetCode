SET ECHO OFF
SET SERVEROUTPUT ON;

DECLARE
    num1 NUMBER := &num1;
    num2 NUMBER := &num2;
    result NUMBER;

BEGIN
    IF num2 = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Can''t divide by 0');
    ELSE
        result := num1 / num2;
        DBMS_OUTPUT.PUT_LINE('Result of division: ' || result);
    END IF;

EXCEPTION
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('Division by 0 not allowed');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/

