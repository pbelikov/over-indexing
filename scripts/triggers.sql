-- 1) Sequence and trigger to autoincrement FOODS
DROP SEQUENCE foods_seq;
CREATE SEQUENCE foods_seq START WITH 1 INCREMENT BY 1;

DROP TRIGGER foods_autinc_trg;
CREATE TRIGGER foods_autinc_trg
BEFORE INSERT
ON foods
FOR EACH ROW
DECLARE
BEGIN
  :new.id = foods_seq.nextval;
END;
/

-- 2) Sequence and trigger to autoincrement EATERS

DROP SEQUENCE eaters_seq;
CREATE SEQUENCE eaters_seq START WITH 1 INCREMENT BY 1;

DROP TRIGGER eaters_autinc_trg;
CREATE TRIGGER eaters_autinc_trg
BEFORE INSERT
ON eaters
FOR EACH ROW
DECLARE
BEGIN
  :new.id = eaters_seq.nextval;
END;
/