/* Найдите среднюю скорость ноутбуков, цена которых превышает 1000 дол. */
SELECT AVG(speed) 
FROM Laptop
WHERE price > 1000.0