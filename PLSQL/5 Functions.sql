SET SERVEROUTPUT ON;

DECLARE
    k NUMBER;

    FUNCTION factorial(n IN NUMBER) RETURN NUMBER IS
        result NUMBER := 1; 
        i NUMBER := 1;   
    BEGIN
        WHILE i <= n LOOP
            result := result * i;
            i := i + 1;
        END LOOP;
        RETURN result;
    END factorial;

BEGIN
    k := 6;
    DBMS_OUTPUT.PUT_LINE('Factorial of ' || k || ' is ' || factorial(k));
END;
/
