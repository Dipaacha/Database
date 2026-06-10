DECLARE
vn_counter NUMBER(3) := 0;

BEGIN

WHILE vn_counter <= 3 LOOP

DBMS_OUTPUT.PUT_LINE('Counter = ' || vn_counter);

vn_counter := vn_counter + 1;

END LOOP;

END;
/