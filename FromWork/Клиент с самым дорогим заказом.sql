USE [DTP31]
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SELECT [OrderData].[customerLogin], [OrderData].[orderNo], [ProductData].[priceTotal]
  FROM [ProductData] 
  INNER JOIN [OrderData] ON [OrderData].[orderNo] = [ProductData].[orderNo]
  WHERE [ProductData].[priceTotal] = (SELECT MAX([ProductData].[priceTotal]) FROM [ProductData])
