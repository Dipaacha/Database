CREATE TYPE address_type AS OBJECT(
    street_name VARCHAR2(30),
    zip_code NUMEBR(20),
    country VARCHAR2(50),
    city_name VARCHAR2(50)
);
/

CREATE TABLE addresses OF address_type;

CREATE TABLE employees(
    employee_id NUMBER(20),
    office_ref REF address_type of addresses
);

--Inserting into addresses table
INSERT INTO addresses VALUES(
    address_type(
        'kapan-1',
        0934,
        'nepal',
        'kapan'
    )
);

INSERT INTO employees SELECT 
1,
REF (a)
FROM addressses a
WHERE a.city_name='kapan';

 


