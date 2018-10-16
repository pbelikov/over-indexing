-- 1) Upper-case of eater name is already used
CREATE INDEX EATER_NAME_UP_IX ON EATERS (UPPER (EATER_NAME));

-- 2) One day they'll want to uppercase food name too
CREATE INDEX FOOD_NAME_UP_IX ON FOODS (UPPER (FOOD_NAME));

-- 3) NVL is a function and its deterministic, so create this too
CREATE INDEX FOOD_NAME_NVL_IX ON FOODS (NVL (FOOD_NAME, 'not eaten'));
