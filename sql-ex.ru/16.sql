/* Найдите пары моделей PC, имеющих одинаковые скорость и RAM. В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i), Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM. */
SELECT DISTINCT A.model AS model_1,  B.model AS model_2, A.speed, A.ram
FROM PC AS A, PC AS B
WHERE A.speed = B.speed AND A.ram = B.ram AND A.model != B.model AND A.model > B.model