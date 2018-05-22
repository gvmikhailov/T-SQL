/* Найдите производителя, выпускающего ПК, но не Ноутбуки. */
SELECT maker 
FROM Product
WHERE type = 'PC'
EXCEPT
SELECT maker 
FROM Product
WHERE type = 'Laptop'