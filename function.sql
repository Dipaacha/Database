
 CREATE FUNCTION fun_count_offerings
   RETURN number IS
    vn_course_ct NUMBER(4);
    BEGIN
    SELECT COUNT(*)
    INTO vn_course_ct
    FROM offerings
    WHERE cource_id=515;
    RETURN vn_course_ct;
   END func_count_offerings;
   /





 CREATE OR REPLACE PROCEDURE proc_using_func IS
  2      vn_no_of_runs NUMBER(20);
  3  BEGIN
  4      vn_no_of_runs := fun_count_offerings;
  5
  6      DBMS_OUTPUT.PUT_LINE(
  7          'The value returned from the function ' || vn_no_of_runs
  8      );
  9  END proc_using_func;
 10  /




 CREATE OR REPLACE FUNCTION func_count_offerings
  2  (in_cource_id NUMBER) RETURN number IS
  3  vn_course_ct NUMBER(4);
  4  BEGIN
  5  SELECT COUNT(*)
  6  INTO vn_course_ct;
  7  FROM offerings
  8  WHERE cource_id=in_course_id;
  9  RETURN vn_cource_ct;
 10  END func_count_offerings;
 11  /


 -procedure -row insert 
 -select statement delete statement -procedure

 -function-student table all data
 -sum avg min max
 -