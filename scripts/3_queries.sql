-- 1) Get all the foods which names contain partial
SELECT food_name
FROM foods
WHERE :partial_food_name LIKE '%' || food_name || '%';

-- 2) Get all the eaters, that ate something and whose names contain partial
SELECT e.eater_name, f.food_name
FROM eaters e
     LEFT JOIN foods f ON f.id = e.food_id
WHERE :partial_eater_name LIKE '%' || UPPER (e.eater_name) || '%'
  AND NVL (f.food_name, 'not eaten') <> 'not eaten';