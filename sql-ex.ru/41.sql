/* Для ПК с максимальным кодом из таблицы PC вывести все его характеристики (кроме кода) в два столбца:
- название характеристики (имя соответствующего столбца в таблице PC);
- значение характеристики */
SELECT fields, A 
FROM
(SELECT
  CAST(model AS NVARCHAR(15)) AS model,
  CAST(speed AS NVARCHAR(15)) AS speed,
  CAST(ram AS NVARCHAR(15)) AS ram,
  CAST(hd AS NVARCHAR(15)) AS hd,
  CAST(cd AS NVARCHAR(15)) AS cd,
  CAST(price AS NVARCHAR(15)) AS price 
FROM PC
WHERE code = (SELECT MAX(code) FROM PC)) AS tempTable

UNPIVOT
(
A FOR fields IN (model, speed, ram, hd, cd, price)
) AS unpvt