-- 1) Populate foods
INSERT INTO foods (id, food_name, in_stock) VALUES (1, 'Burger', 100);
INSERT INTO foods (id, food_name, in_stock) VALUES (2, 'Pizza', 200);
INSERT INTO foods (id, food_name, in_stock) VALUES (3, 'Sushi', 250);
INSERT INTO foods (id, food_name, in_stock) VALUES (4, 'Cookie', 110);
INSERT INTO foods (id, food_name, in_stock) VALUES (5, 'Pie', 15);

INSERT INTO eaters (eater_name, food_id, amount_eaten) VALUES ('Eater Human 1', 1, 20);
INSERT INTO eaters (eater_name, food_id, amount_eaten) VALUES ('Eater Human 2', null, 20);
INSERT INTO eaters (eater_name, food_id, amount_eaten) VALUES ('Eater Human 3', 2, 20);
INSERT INTO eaters (eater_name, food_id, amount_eaten) VALUES ('Eater Human 4', 4, 20);
INSERT INTO eaters (eater_name, food_id, amount_eaten) VALUES ('Eater Human 5', 5, 20);