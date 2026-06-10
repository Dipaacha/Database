DECLARE
vc_firstname VARCHAR2(30) := 'SMITH';
vn_student_id NUMBER(2);

BEGIN

DBMS_OUTPUT.PUT_LINE(vc_firstname);
DBMS_OUTPUT.PUT_LINE(vn_student_id);

END;
/



CREATE OR REPLACE PROCEDURE proc_add_subject IS

vc_subject_name subject_areas.subject_name%TYPE := 'NEW SUBJECT';

BEGIN

INSERT INTO subject_areas
VALUES(seq_subject_id.NEXTVAL, vc_subject_name);

END proc_add_subject;
/

CREATE OR REPLACE PROCEDURE proc_delete_subject IS

vn_subject_id subject_areas.subject_id%TYPE;

BEGIN

SELECT seq_subject_id.CURRVAL
INTO vn_subject_id
FROM dual;

DELETE FROM subject_areas
WHERE subject_id = vn_subject_id;

END proc_delete_subject;
/

CREATE OR REPLACE PROCEDURE proc_param
(in_subject_id subject_areas.subject_id%TYPE) IS

BEGIN

DELETE FROM subject_areas
WHERE subject_id = in_subject_id;

END proc_param;
/