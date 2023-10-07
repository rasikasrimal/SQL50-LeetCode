-- Enable DBMS_OUTPUT
SET SERVEROUTPUT ON;

DECLARE
   counter NUMBER := 0;
   n number := 1;
BEGIN
    WHILE counter < 10 LOOP
        IF MOD(n,2) = 0 THEN 
            dbms_output.put_line(n);
            counter := counter + 1;
        END IF;
        n := n + 1;
    END LOOP;
END;
/
