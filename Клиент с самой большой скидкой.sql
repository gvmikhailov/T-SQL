USE [DTP31]
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SELECT [OrderData].[customerLogin], [OrderData].[orderNo], [ProductData].[discountPromo]
  FROM [ProductData] 
  INNER JOIN [OrderData] ON [OrderData].[orderNo] = [ProductData].[orderNo]
  WHERE [ProductData].[discountPromo] = (SELECT MAX([ProductData].[discountPromo]) FROM [ProductData])

