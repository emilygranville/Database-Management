/*2*/
CREATE TABLE ANIMALS
    (animal_id NUMBER(6) CONSTRAINT aml_ID_pk PRIMARY KEY
    name VARCHAR2(25)
    license_tag_number NUMBER(10) CONSTRAINT aml_LTN_uk UNIQUE KEY
    admit_date DATE NOT NULL
    adoption_id NUMBER(5),
    vaccination_date DATE NOT NULL);
/*4*/
INSERT INTO animals
VALUES (101, 'Spot', 35540 '10-Oct-2004', 205, '12-Oct-2004');

/*5*/
ALTER TABLE ANIMALS
ADD ADOPTION_ID NUMBER(10) CONSTRAINT AML_ADP_ID_FK FOREIGN KEY(ADOPTION_ID) REFERENCES ADOPTION(ID);