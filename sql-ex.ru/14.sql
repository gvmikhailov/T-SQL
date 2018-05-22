/* Найти производителей, которые выпускают более одной модели, при этом все выпускаемые производителем модели являются продуктами одного типа. Вывести: maker, type */
SELECT maker, type 
FROM Product 
WHERE maker in (SELECT maker FROM (SELECT maker,type FROM Product GROUP BY maker,type) x GROUP BY maker HAVING count(*) = 1) 
GROUP BY maker, type 
HAVING COUNT(*) > 1