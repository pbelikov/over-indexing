-- 1) Create tables

CREATE TABLE foods (
    id          NUMBER(9),
    food_name   VARCHAR2(1024),
    in_stock    NUMBER(4)
);

CREATE TABLE eaters (
    id            NUMBER(9),
    food_id       NUMBER(9),
    eater_name    VARCHAR2(1024),
    amount_eaten  NUMBER(3)
);

-- 2) Add keys

ALTER TABLE foods ADD CONSTRAINT food_id_pk PRIMARY KEY (id);
ALTER TABLE eaters ADD CONSTRAINT eater_id_pk PRIMARY KEY (id);
ALTER TABLE eaters ADD CONSTRAINT eaters_food_id_fk FOREIGN KEY (food_id) REFERENCES foods(id);

-- 3) Add index on foreign key
CREATE INDEX eaters_food_id_fk ON eaters(food_id);

-- 4) Sequence and trigger to autoincrement FOODS
DROP SEQUENCE foods_seq;
CREATE SEQUENCE foods_seq START WITH 7 INCREMENT BY 1;

DROP TRIGGER foods_autinc_trg;
CREATE TRIGGER foods_autinc_trg
BEFORE INSERT
ON foods
FOR EACH ROW
DECLARE
BEGIN
  IF (:new.id IS NULL) THEN
    :new.id := foods_seq.nextval;
  END IF;
END;
/

-- 5) Sequence and trigger to autoincrement EATERS
DROP SEQUENCE eaters_seq;
CREATE SEQUENCE eaters_seq START WITH 1 INCREMENT BY 1;

DROP TRIGGER eaters_autinc_trg;
CREATE TRIGGER eaters_autinc_trg
BEFORE INSERT
ON eaters
FOR EACH ROW
DECLARE
BEGIN
  :new.id := eaters_seq.nextval;
END;
/

-- 6) Upper-case of eater name is already used
CREATE INDEX EATER_NAME_UP_IX ON EATERS (UPPER (EATER_NAME));

-- 7) One day they'll want to uppercase food name too
CREATE INDEX FOOD_NAME_UP_IX ON FOODS (UPPER (FOOD_NAME));

-- 8) NVL is a function and its deterministic, so create this too
CREATE INDEX FOOD_NAME_NVL_IX ON FOODS (NVL (FOOD_NAME, 'not eaten'));