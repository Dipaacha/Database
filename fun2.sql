SELECT CEIL(AVG(salary)) AS ceiling_value,
       FLOOR(AVG(salary)) AS floor_value,
       ROUND(AVG(salary), 2) AS rounded_value
FROM staff;

SELECT MOD(15,4),
       REMAINDER(15,4)
FROM dual;

SELECT CONCAT(SUBSTR(firstname,1,2),
              SUBSTR(surname,1,5)) AS username
FROM staff;