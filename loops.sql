DECLARE

TYPE num_tab IS TABLE OF NUMBER;
modulesNT num_tab := num_tab(10, 20, 30, 40);

BEGIN

FORALL j IN modulesNT.FIRST .. modulesNT.LAST

INSERT INTO test_table VALUES (modulesNT(j));

END;
/



DECLARE

TYPE num_tab IS TABLE OF NUMBER;
modulesNT num_tab := num_tab(101, 102, 103);

BEGIN

FORALL j IN modulesNT.FIRST .. modulesNT.LAST

UPDATE staff
SET salary = salary + 100
WHERE staff_id = modulesNT(j);

END;
/