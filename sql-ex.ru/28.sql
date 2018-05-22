/* Используя таблицу Product, определить количество производителей, выпускающих по одной модели. */
SELECT COUNT(maker) AS Makers
FROM (SELECT maker FROM Product GROUP BY maker HAVING COUNT(model)=1) AS Makers2