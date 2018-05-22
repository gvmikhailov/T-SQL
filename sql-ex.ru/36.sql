/* Перечислите названия головных кораблей, имеющихся в базе данных (учесть корабли в Outcomes). */
SELECT name 
FROM ships 
WHERE class = name
UNION
SELECT ship AS name 
FROM Classes, Outcomes 
WHERE Classes.class = Outcomes.ship