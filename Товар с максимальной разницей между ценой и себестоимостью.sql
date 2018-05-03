SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
USE [GS]
DECLARE @MaxDifference decimal(38,20);
SET @MaxDifference = (SELECT MAX([Цена Единицы] - [Себест. Единицы]) FROM [dbo].[Городской супермаркет$Товар])
SELECT [Но.], [Описание], [Цена Единицы], [Себест. Единицы], @MaxDifference as MaxDifference FROM  [dbo].[Городской супермаркет$Товар] 
WHERE [Цена Единицы] != 0 AND ([Цена Единицы] - [Себест. Единицы]) = @MaxDifference