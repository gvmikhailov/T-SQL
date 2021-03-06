USE DTP31
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SELECT [customerEmail], [article], [quantity], [Но.], [Описание]
  FROM [DTP31].[dbo].[ProductData] t1
  JOIN [GS-MSNAV01].[GS].[dbo].[Городской супермаркет$Товар] t2 ON t1.[article] = t2.[Но.] COLLATE Cyrillic_General_BIN
  JOIN [DTP31].[dbo].[OrderData] t3 ON t1.[orderNo] = t3.[orderNo]
  WHERE [article] in ('ТОВ160616', 'ТОВ359594', 'ТОВ359596', 'ТОВ279125', 'ТОВ258006', 'ТОВ260184', 'ТОВ260185')
  ORDER BY [customerEmail]