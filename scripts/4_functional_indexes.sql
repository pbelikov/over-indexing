-- 1) Upper-case of eater name is already used
CREATE INDEX eater_name_up_ix ON EATERS (UPPER (EATER_NAME));

-- 2) One day they'll want to uppercase food name too
CREATE INDEX food_name_up_ix ON FOODS (UPPER (FOOD_NAME));

-- 3) NVL is a function and its deterministic, so create this too
CREATE INDEX food_name_nvl_ix ON FOODS (NVL (FOOD_NAME, 'not eaten'));