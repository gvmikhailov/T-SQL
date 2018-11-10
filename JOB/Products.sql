USE DBName
SELECT table2.ProductName, table3.CategoryName
FROM CMS table1
INNER JOIN Products ON table1.Product = table2.Product
OUTER LEFT JOIN ON table1.Category = table2.Category

