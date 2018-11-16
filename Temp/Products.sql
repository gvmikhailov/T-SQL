USE DBName
SELECT table2.ProductName AS С“оварТ, table3.CategoryName AS С атегори€Т
FROM Products table1
/*
        ѕрисоедин€ем таблицу св€зи между категори€ми и продуктами слева, чтобы получить
        полный список товаров, даже тех, которых нет в CMS
*/
OUTER LEFT JOIN CMS ON table1.Product = table2.Product
/*
        ѕрисоедин€ем таблицу категорий слева, чтобы получить
        полный список товар Ц категори€. ” товаров, у которых нет категорий, будет в поле категории
        значение NULL
*/
OUTER LEFT JOIN Categories table3 ON table2.Category = table3.Category


