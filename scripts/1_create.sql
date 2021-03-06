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
CREATE SEQUENCE foods_seq START WITH 7 INCREMENT BY 1;
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
CREATE SEQUENCE eaters_seq START WITH 1 INCREMENT BY 1;
CREATE TRIGGER eaters_autinc_trg
BEFORE INSERT
ON eaters
FOR EACH ROW
DECLARE
BEGIN
  :new.id := eaters_seq.nextval;
END;
/

-- 6) Indexes on name fields
CREATE INDEX eater_name_ix ON EATERS (EATER_NAME);
CREATE INDEX food_name_ix ON FOODS (FOOD_NAME);