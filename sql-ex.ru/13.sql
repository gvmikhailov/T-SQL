/* Найдите среднюю скорость ПК, выпущенных производителем A. */
SELECT AVG(speed) AS Avg_Speed 
FROM PC 
JOIN Product ON Product.model = PC.model
WHERE type='PC' AND maker = 'A'