/* Найдите корабли, `сохранившиеся для будущих сражений`; т.е. выведенные из строя в одной битве (damaged), они участвовали в другой, произошедшей позже. */
WITH b_s AS
(SELECT o.ship, b.name, b.date, o.result
FROM outcomes o
JOIN battles b ON o.battle = b.name )
SELECT DISTINCT a.ship FROM b_s a
WHERE a.ship IN
(SELECT ship FROM b_s b
WHERE b.date < a.date AND b.result = 'damaged')