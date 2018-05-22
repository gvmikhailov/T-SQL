/* Найдите производителей, выпускающих по меньшей мере три различных модели ПК. Вывести: Maker, число моделей ПК. */
SELECT maker, COUNT(type) AS Count_Model
FROM Product
WHERE type = 'PC'
GROUP BY MAKER
HAVING COUNT(type) >= 3