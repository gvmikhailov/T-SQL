USE [DTP31]
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SELECT [ProductData].[orderNo], [ProductData].[priceUnit], [ProductData].[article], [Описание] FROM 
(SELECT tab1.[orderNo], MAX([priceUnit]) AS [MaxPrice]
  FROM [dbo].[ProductData] tab1
  JOIN [dbo].[OrderData] tab2 ON tab1.[orderNo] = tab2.[orderNo]
  WHERE tab2.[orderCreation] BETWEEN '2018-03-20 00:00:00.0' AND '2018-04-19 23:59:59.0'
  GROUP BY tab1.[orderNo]) AS TempDb
  JOIN [dbo].[ProductData] ON [ProductData].[orderNo] = TempDb.[orderNo] AND [ProductData].[priceUnit] = TempDb.[MaxPrice]
  JOIN [GS-MSNAV01].GS.dbo.[Городской супермаркет$Товар] tab3 ON [ProductData].[article] = tab3.[Но.] COLLATE Cyrillic_General_BIN