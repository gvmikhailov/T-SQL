/* В предположении, что приход и расход денег на каждом пункте приема фиксируется произвольное число раз (первичным ключом в таблицах является столбец code), требуется получить таблицу, в которой каждому пункту за каждую дату выполнения операций будет соответствовать одна строка.
Вывод: point, date, суммарный расход пункта за день (out), суммарный приход пункта за день (inc). Отсутствующие значения считать неопределенными (NULL). */
SELECT point, date, SUM(sum_out) AS Sum_out, SUM(sum_inc) AS Sum_inc
FROM ( 
SELECT point, date, SUM(inc) AS Sum_inc, NULL AS Sum_out FROM Income 
GROUP BY point, date
UNION
SELECT point, date, NULL AS Sum_inc, SUM(out) AS Sum_out FROM Outcome 
GROUP BY point, date ) as Temp_select
GROUP BY point, date 
ORDER BY point