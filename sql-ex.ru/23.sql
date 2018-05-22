/* Найдите производителей, которые производили бы как ПК со скоростью не менее 750 МГц, так и Ноутбуки со скоростью не менее 750 МГц. Вывести: Maker */
SELECT maker
FROM(SELECT model FROM PC WHERE speed !< 750) AS pc
JOIN Product ON Product.model = pc.model
INTERSECT
SELECT maker
FROM(SELECT model FROM Laptop WHERE speed !< 750) AS laptop
JOIN Product ON Product.model = laptop.model