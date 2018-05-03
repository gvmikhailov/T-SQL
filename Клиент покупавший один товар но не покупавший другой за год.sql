USE DTP31
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SELECT [customerEmail], [article], [quantity] 
  FROM [DTP31].[dbo].[ProductData] t1
  JOIN [DTP31].[dbo].[OrderData] t3 ON t1.[orderNo] = t3.[orderNo]
  WHERE [article] = 'рнб000216' AND [orderCreation] BETWEEN '2017-04-19 00:00:00.0' AND '2018-04-19 23:59:59.0'
  EXCEPT SELECT [customerEmail], [article], [quantity]
  FROM [DTP31].[dbo].[ProductData] t1
  JOIN [DTP31].[dbo].[OrderData] t3 ON t1.[orderNo] = t3.[orderNo]
  WHERE [article] = 'рнб357184' AND [orderCreation] BETWEEN '2017-04-19 00:00:00.0' AND '2018-04-19 23:59:59.0'  
  ORDER BY [customerEmail], [article]