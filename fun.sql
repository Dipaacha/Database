CREATE OR REPLACE FUNCTION func_get_username
RETURN VARCHAR2 IS

vc_username VARCHAR2(50);

BEGIN

SELECT CONCAT(SUBSTR(firstname,1,2), SUBSTR(surname,1,5))
INTO vc_username
FROM staff
WHERE staff_id = 1;

RETURN vc_username;

END func_get_username;
/


CREATE OR REPLACE FUNCTION func_get_username
(in_staff_id NUMBER) RETURN VARCHAR2 IS

vc_username VARCHAR2(50);

BEGIN

SELECT CONCAT(SUBSTR(firstname,1,2), SUBSTR(surname,1,5))
INTO vc_username
FROM staff
WHERE staff_id = in_staff_id;

RETURN vc_username;

END func_get_username;
/

CREATE OR REPLACE PROCEDURE proc_show_username
(in_staff_id NUMBER) IS

vc_result VARCHAR2(50);

BEGIN

vc_result := func_get_username(in_staff_id);

DBMS_OUTPUT.PUT_LINE('Username is: ' || vc_result);

END proc_show_username;
/