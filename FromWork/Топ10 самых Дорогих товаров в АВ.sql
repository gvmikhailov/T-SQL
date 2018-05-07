USE [GS]
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SELECT DISTINCT TOP 10 [Но.], [Описание], [Цена Единицы]
FROM [dbo].[Городской супермаркет$Товар]
ORDER BY [Цена Единицы] DESC