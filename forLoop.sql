DECLARE
vc_name VARCHAR2(30) := 'CAROLE';

BEGIN

FOR vn_counter IN 1 .. LENGTH(vc_name) LOOP

DBMS_OUTPUT.PUT_LINE(SUBSTR(vc_name, vn_counter, 1));

END LOOP;

END;
/