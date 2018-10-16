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

