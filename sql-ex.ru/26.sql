/* Найдите среднюю цену ПК и Ноутбуков, выпущенных производителем A (латинская буква). Вывести: одна общая средняя цена. */
WITH asd AS
(SELECT price FROM PC 
JOIN Product ON Product.model=PC.model
WHERE maker='A'
UNION ALL
SELECT price FROM Laptop 
JOIN Product ON Product.model=laptop.model
WHERE maker='A')

SELECT AVG(price) AS AVG_price FROM asd