/* По Вашингтонскому международному договору от начала 1922 г. запрещалось строить линейные корабли водоизмещением более 35 тыс.тонн. Укажите корабли, нарушившие этот договор (учитывать только корабли c известным годом спуска на воду). Вывести названия кораблей. */
SELECT name
FROM Ships, Classes
WHERE launched IN (SELECT launched FROM Ships WHERE launched >= 1922 AND launched IS NOT NULL) AND displacement > 35000 AND type = 'bb' AND Ships.class = Classes.class