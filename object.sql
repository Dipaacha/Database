-- creating object type name address_type
CREATE TYPE address_type AS OBJECT(
    street_name VARCHAR2(30),
    zip_code NUMEBR(20),
    country VARCHAR2(50),
    city_name VARCHAR2(50)
);
/

--creating table of the using object type
CREATE TABLE costomers (
    costumer_id NUMBER(30),
    costumer_name VARCHAR2(50),
    address address_type
);


--inserting data in costumers table and also also object column
INSEERT INTO customers VALUES(
    1117,
    'jennie',
    address_tyoe(
        0047,
        'nepal',
        'ktm'
    )
);

--viewing datas 
SELECT * FROM customers;


--crating object address of address_type

CREATE TABLE address OF address_type;

--inserting data into object table

INSERT INTO address VALUE(
    address_type(
        0020,
        'nepal',
        'kapan'
    )
);