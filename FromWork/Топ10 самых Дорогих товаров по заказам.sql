USE [DTP31]
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SELECT DISTINCT TOP 10 [priceUnit], [article], table2.[��������]
FROM [dbo].[ProductData] table1
JOIN [GS-MSNAV01].[GS].[dbo].[��������� �����������$�����] table2 ON table1.[article] = table2.[��.] COLLATE Cyrillic_General_BIN
ORDER BY [priceUnit] desc