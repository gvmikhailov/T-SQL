SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SELECT [priceUnit], table3.[orderNo], [article], [��������]
FROM [P31-MSNAV01].[DTP31].[dbo].[ProductData] table1
JOIN [GS-MSNAV01].[GS].[dbo].[��������� �����������$�����] table2 ON table1.[article] = table2.[��.] COLLATE Cyrillic_General_BIN
JOIN [P31-MSNAV01].[DTP31].[dbo].[OrderData] table3 ON table1.[orderNo] = table3.[orderNo]
WHERE [priceUnit] = (SELECT MAX([priceUnit]) FROM  [P31-MSNAV01].[DTP31].[dbo].[ProductData])
