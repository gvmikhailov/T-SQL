/* Найдите производителей принтеров. Вывести: maker */
SELECT DISTINCT Product.maker
FROM Product
WHERE Product.type = 'Printer'