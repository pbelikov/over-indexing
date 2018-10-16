-- 1) Drop indexes
DROP INDEX eater_name_up_ix;
DROP INDEX food_name_up_ix;
DROP INDEX food_name_nvl_ix;
DROP INDEX eaters_food_id_fk;

-- 2) Drop sequences
DROP SEQUENCE foods_seq;
DROP SEQUENCE eaters_seq;

-- 3) Drop triggers
DROP TRIGGER foods_autinc_trg;
DROP TRIGGER eaters_autinc_trg;

-- 4) Drop tables
DROP TABLE foods;
DROP TABLE eaters;
