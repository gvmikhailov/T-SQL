SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SELECT [orderNo], [article], [quantity], [Но.], [Описание]
  FROM [DTP31].[dbo].[ProductData] t1
  JOIN [GS-MSNAV01].[GS].[dbo].[Городской супермаркет$Товар] t2 ON t1.[article] = t2.[Но.] COLLATE Cyrillic_General_BIN
  WHERE orderNo = 1508195842