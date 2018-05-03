USE [GS]
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
DECLARE @MaxPrice decimal(38,20)
SET @MaxPrice = (SELECT MAX([Цена Единицы]) FROM [dbo].[Городской супермаркет$Товар] WHERE [Собственное производство] <> 0)
SELECT [Но.], [Описание], [Посл. Дата Изменения], @MaxPrice
  FROM [dbo].[Городской супермаркет$Товар]
  WHERE [Собственное производство] <> 0 AND [Цена Единицы] = @MaxPrice
  Order by [Посл. Дата Изменения] DESC