USE IS
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SELECT table2.GoodsName, table3.CategoryName
FROM IS.ISHOP table1
JOIN IS.GOODS table2 ON table1.GoodsID = table2.GoodsID
LEFT JOIN IS.CATEGORIES table3 ON table1.CategoryID = table3.CategoryID
ORDER BY table2.GoodsName
