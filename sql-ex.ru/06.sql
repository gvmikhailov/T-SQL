/* Для каждого производителя, выпускающего Ноутбуки c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких Ноутбуков. Вывод: производитель, скорость. */
SELECT DISTINCT Product.maker, Laptop.speed
FROM Laptop
JOIN Product ON Product.model = Laptop.model
WHERE Laptop.hd !< 10