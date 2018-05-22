/* Найдите модели Ноутбуков, скорость которых меньше скорости любого из ПК. Вывести: type, model, speed */
SELECT DISTINCT type, Laptop.model, speed
FROM Laptop
JOIN Product ON Product.model = Laptop.model
WHERE speed < ALL (SELECT speed FROM PC)