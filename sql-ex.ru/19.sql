/* Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им Ноутбуков. Вывести: maker, средний размер экрана. */
SELECT maker, AVG(screen) AS avg_screen
FROM Laptop
JOIN Product ON Laptop.model = Product.Model
GROUP BY maker