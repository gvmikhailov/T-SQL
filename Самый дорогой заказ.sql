USE [DTP31]
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
DECLARE @MaxPrice decimal
SET @MaxPrice = (SELECT MAX([priceTotal]) FROM [ProductData])
SELECT [orderNo], [priceTotal]
FROM [ProductData]
WHERE [priceTotal] = @MaxPrice
