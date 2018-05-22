/* Одной из характеристик корабля является половина куба калибра его главных орудий (mw). С точностью до 2 десятичных знаков определите среднее значение mw для кораблей каждой страны, у которой есть корабли в базе данных. */
SELECT country, CAST(AVG((POWER(bore,3)/2)) AS NUMERIC (6,2)) AS Weight
FROM 
(SELECT country, classes.class, bore, name 
FROM Classes 
LEFT JOIN Ships ON classes.class=ships.class
UNION ALL
SELECT DISTINCT country, class, bore, ship 
FROM Classes AS tab_1 
LEFT JOIN Outcomes AS tab_2 on tab_1.class=tab_2.ship
WHERE ship=class and ship NOT IN (SELECT name FROM Ships)) AS TempSelect
WHERE name IS NOT NULL 
GROUP BY country