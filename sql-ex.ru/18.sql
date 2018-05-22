/* Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price */
SELECT prod.maker, MIN(pr.price) AS price
FROM printer AS pr, product AS prod
WHERE pr.color='y' and pr.model=prod.model
GROUP BY prod.maker
HAVING MIN(pr.price)=(SELECT MIN(price) FROM printer WHERE color='y')