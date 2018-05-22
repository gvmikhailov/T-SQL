/* Перечислите номера моделей любых типов, имеющих самую высокую цену по всей имеющейся в базе данных продукции. */
WITH max_price_all_type AS 
(SELECT model, price FROM pc WHERE price = (SELECT MAX(price) FROM pc)
UNION
SELECT model, price FROM laptop WHERE price = (SELECT MAX(price) FROM laptop)
UNION
SELECT model, price FROM printer WHERE price = (SELECT MAX(price) FROM printer))

SELECT model FROM max_price_all_type WHERE price = (SELECT MAX(price) FROM max_price_all_type)