SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE add_numbers(
    p_num1 IN NUMBER,
    p_num2 IN NUMBER,
    p_sum OUT NUMBER
) AS
BEGIN
    p_sum := p_num1 + p_num2;
END add_numbers;
/

DECLARE
    result NUMBER;
BEGIN
    result := 0;
    add_numbers(5, 7, result);
    dbms_output.put_line('Sum: ' || result);

    result := 0;
    add_numbers(10, 20, result);
    dbms_output.put_line('Sum: ' || result);
END;
/
